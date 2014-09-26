.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;
.super Landroid/widget/ImageView;
.source "RotationImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;
    }
.end annotation


# static fields
.field private static final REPEAT_COUNT:I = 0x1e

.field private static final TRANSITION_DURATION:I = 0x4b0


# instance fields
.field private mAnimListener:Landroid/view/animation/Animation$AnimationListener;

.field private mListener:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;

.field private mPlayAnimation:Z

.field private mRotateAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mRotateAnim:Landroid/view/animation/Animation;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mPlayAnimation:Z

    .line 26
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mListener:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;

    .line 32
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mRotateAnim:Landroid/view/animation/Animation;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mPlayAnimation:Z

    .line 26
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mListener:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;

    .line 32
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mRotateAnim:Landroid/view/animation/Animation;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mPlayAnimation:Z

    .line 26
    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mListener:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;

    .line 32
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mListener:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mPlayAnimation:Z

    return v0
.end method


# virtual methods
.method public setListener(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mListener:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;

    .line 30
    return-void
.end method

.method public startAnimation()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    .line 57
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mRotateAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mRotateAnim:Landroid/view/animation/Animation;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mRotateAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mAnimListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mRotateAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mRotateAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 65
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mRotateAnim:Landroid/view/animation/Animation;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 66
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mRotateAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mPlayAnimation:Z

    .line 68
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mPlayAnimation:Z

    .line 72
    return-void
.end method
