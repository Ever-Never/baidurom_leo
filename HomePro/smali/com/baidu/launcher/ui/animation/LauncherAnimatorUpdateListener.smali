.class public abstract Lcom/baidu/launcher/ui/animation/LauncherAnimatorUpdateListener;
.super Ljava/lang/Object;
.source "LauncherAnimatorUpdateListener.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAnimationUpdate(FF)V
.end method

.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 24
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 25
    .local v1, b:F
    const/high16 v2, 0x3f80

    sub-float v0, v2, v1

    .line 26
    .local v0, a:F
    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/animation/LauncherAnimatorUpdateListener;->onAnimationUpdate(FF)V

    .line 27
    return-void
.end method
