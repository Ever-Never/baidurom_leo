.class Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator$1;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "InterruptibleInOutAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;-><init>(JFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator$1;->this$0:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator$1;->this$0:Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->mDirection:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;->access$002(Lcom/baidu/launcher/ui/animation/InterruptibleInOutAnimator;I)I

    .line 55
    return-void
.end method
