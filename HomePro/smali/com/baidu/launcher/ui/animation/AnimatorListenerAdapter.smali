.class public abstract Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.super Ljava/lang/Object;
.source "AnimatorListenerAdapter.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 31
    return-void
.end method

.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 38
    return-void
.end method

.method public onAnimationRepeat(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 45
    return-void
.end method

.method public onAnimationStart(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 52
    return-void
.end method