.class Lcom/baidu/launcher/ui/homeview/CellLayout$2;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field final synthetic val$anim:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$2;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$2;->val$anim:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 282
    check-cast p1, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .end local p1
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$2;->val$anim:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 285
    :cond_0
    return-void
.end method
