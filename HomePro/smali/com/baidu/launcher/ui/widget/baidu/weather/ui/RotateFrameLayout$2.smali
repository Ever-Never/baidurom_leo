.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;
.super Ljava/lang/Object;
.source "RotateFrameLayout.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 72
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentSide:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v0, 0x0

    .line 75
    .local v0, vis:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackView:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentSide:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)I

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontView:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mFrontAnim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$MyRotateAnim;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentSide:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 82
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentStatus:I
    invoke-static {v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->access$402(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;I)I

    .line 84
    :cond_1
    return-void

    .line 72
    .end local v0           #vis:I
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 90
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mBackView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->mCurrentStatus:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;->access$402(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotateFrameLayout;I)I

    .line 97
    return-void
.end method
