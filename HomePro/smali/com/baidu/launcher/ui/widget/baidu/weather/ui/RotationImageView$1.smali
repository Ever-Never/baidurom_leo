.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;
.super Ljava/lang/Object;
.source "RotationImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mListener:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mPlayAnimation:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mListener:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;->AnimationEnd()V

    .line 39
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->mPlayAnimation:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->clearAnimation()V

    .line 47
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 52
    return-void
.end method
