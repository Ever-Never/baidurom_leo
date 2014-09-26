.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;
.super Landroid/widget/FrameLayout;
.source "RotateFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;
    }
.end annotation


# static fields
.field public static final BACK_SIDE:I = 0x1

.field public static final FRONT_SIDE:I = 0x0

.field private static final TRANSITION_DURATION:I = 0x258

.field public static final TRANSITION_RUNNING:I = 0x0

.field public static final TRANSITION_STOP:I = 0x1


# instance fields
.field private mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

.field private mBackAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBackView:Landroid/view/View;

.field private mCurrentSide:I

.field private mCurrentStatus:I

.field private mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

.field private mFrontAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mFrontView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentSide:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentStatus:I

    .line 36
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 68
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 103
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->init()V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentSide:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentStatus:I

    .line 36
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 68
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 109
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->init()V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentSide:I

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentStatus:I

    .line 36
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 68
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 115
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->init()V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentSide:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x12c

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    .line 130
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    .line 131
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setDuration(J)V

    .line 132
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v3, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAngle(FF)V

    .line 133
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v2, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAlpha(FF)V

    .line 134
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 135
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    .line 138
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setDuration(J)V

    .line 139
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    const/high16 v1, 0x4387

    const/high16 v2, 0x43b4

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAngle(FF)V

    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v3, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAlpha(FF)V

    .line 141
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 142
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 144
    return-void
.end method


# virtual methods
.method public flip()V
    .locals 2

    .prologue
    .line 171
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentStatus:I

    if-eqz v1, :cond_0

    .line 172
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentSide:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 173
    .local v0, target:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->flipTo(I)V

    .line 176
    .end local v0           #target:I
    :cond_0
    return-void

    .line 172
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public flipTo(I)V
    .locals 4
    .parameter "targetSide"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 147
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentStatus:I

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 149
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentSide:I

    .line 150
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 152
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAngle(F)V

    .line 153
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAlpha(F)V

    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    const/high16 v1, 0x4387

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAngle(F)V

    .line 155
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAlpha(F)V

    .line 156
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackView:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAngle(F)V

    .line 160
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAlpha(F)V

    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    const/high16 v1, 0x43b4

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAngle(F)V

    .line 162
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;->setAlpha(F)V

    .line 163
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontView:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 122
    const v0, 0x7f080292

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontView:Landroid/view/View;

    .line 124
    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackView:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->setAnimationCacheEnabled(Z)V

    .line 127
    return-void
.end method
