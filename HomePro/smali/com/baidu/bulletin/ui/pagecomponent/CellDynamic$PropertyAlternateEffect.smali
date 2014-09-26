.class abstract Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;
.super Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;
.source "CellDynamic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PropertyAlternateEffect"
.end annotation


# static fields
.field private static final DURATION:I = 0x3e8

.field private static final REPEAT_COUNT:I = 0x4

.field private static final START_DELAY:I = 0x1b58


# instance fields
.field mAimation:Landroid/animation/AnimatorSet;

.field private mCellDelay:J

.field private mRepeatCount:I


# direct methods
.method public constructor <init>(Landroid/view/View;J)V
    .locals 1
    .parameter "view"
    .parameter "delay"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;-><init>(Landroid/view/View;)V

    .line 88
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    .line 92
    iput-wide p2, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mCellDelay:J

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->newAlternate()V

    return-void
.end method

.method private newAlternate()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x1b58

    const-wide/16 v11, 0x3e8

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 127
    iget v4, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mRepeatCount:I

    if-lez v4, :cond_0

    .line 129
    iget v4, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mRepeatCount:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    iget-wide v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mCellDelay:J

    .line 131
    .local v0, cellDelay:J
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getEffectedObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getProperty()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [F

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getOriginalValue()F

    move-result v7

    aput v7, v6, v8

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getDestinationValue()F

    move-result v7

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 132
    .local v2, fadeIn:Landroid/animation/ObjectAnimator;
    add-long v4, v13, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 133
    invoke-virtual {v2, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 135
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getEffectedObject()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getProperty()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [F

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getDestinationValue()F

    move-result v7

    aput v7, v6, v8

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getOriginalValue()F

    move-result v7

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 136
    .local v3, fadeOut:Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 137
    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 139
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    .line 140
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->setAnimatorEndListener()V

    .line 141
    iget-object v4, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 142
    iget-object v4, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 144
    iget v4, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mRepeatCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mRepeatCount:I

    .line 146
    .end local v0           #cellDelay:J
    .end local v2           #fadeIn:Landroid/animation/ObjectAnimator;
    .end local v3           #fadeOut:Landroid/animation/ObjectAnimator;
    :cond_0
    return-void

    .line 129
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private resumeAlternate()V
    .locals 8

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getCurrentValue()F

    move-result v0

    .line 115
    .local v0, current:F
    const/high16 v3, 0x447a

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getDestinationValue()F

    move-result v4

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getOriginalValue()F

    move-result v5

    invoke-static {v3, v4, v5, v0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->calculateRemainingDuration(FFFF)F

    move-result v1

    .line 117
    .local v1, remainingDuration:F
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getEffectedObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getProperty()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getOriginalValue()F

    move-result v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 118
    .local v2, resume:Landroid/animation/ObjectAnimator;
    float-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    .line 121
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->setAnimatorEndListener()V

    .line 122
    iget-object v3, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 123
    iget-object v3, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 124
    return-void
.end method

.method private setAnimatorEndListener()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 150
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect$1;-><init>(Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected abstract getCurrentValue()F
.end method

.method protected abstract getDestinationValue()F
.end method

.method protected abstract getEffectedObject()Ljava/lang/Object;
.end method

.method protected abstract getOriginalValue()F
.end method

.method protected abstract getProperty()Ljava/lang/String;
.end method

.method public onVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 173
    sparse-switch p1, :sswitch_data_0

    .line 181
    :goto_0
    return-void

    .line 175
    :sswitch_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->start()V

    goto :goto_0

    .line 178
    :sswitch_1
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->stop()V

    goto :goto_0

    .line 173
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public start()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->stop()V

    .line 105
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getCurrentValue()F

    move-result v0

    .line 106
    .local v0, current:F
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->getOriginalValue()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->resumeAlternate()V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->newAlternate()V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 165
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mAimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 168
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$PropertyAlternateEffect;->mRepeatCount:I

    .line 169
    return-void
.end method
