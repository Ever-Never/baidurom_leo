.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;
.super Ljava/lang/Object;
.source "QuickLauncherLayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->expand(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10
    .parameter "animation"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 135
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    const/16 v6, 0xb4

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mBgAlpha:I
    invoke-static {v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$102(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;I)I

    .line 136
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isTransing:Z
    invoke-static {v5, v9}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$002(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;Z)Z

    .line 137
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->invalidate()V

    .line 138
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getWidth()I

    move-result v1

    .line 139
    .local v1, Width:I
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getHeight()I

    move-result v0

    .line 140
    .local v0, Height:I
    new-instance v4, Landroid/view/animation/RotateAnimation;

    const/high16 v5, -0x3d90

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 142
    .local v4, rotateA:Landroid/view/animation/RotateAnimation;
    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 143
    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1$2;

    invoke-direct {v5, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 156
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f80

    invoke-direct {v2, v8, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 157
    .local v2, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 158
    .local v3, as:Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 159
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 160
    const-wide/16 v5, 0x258

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 161
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 162
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getmCurShowLayout()Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 163
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mContainer:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$200(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->getmCurShowLayout()Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayout;->setVisibility(I)V

    .line 164
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 131
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    const/4 v2, 0x1

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isTransing:Z
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$002(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;Z)Z

    .line 115
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    .line 116
    .local v0, va:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setFloatValues([F)V

    .line 117
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 118
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 126
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 127
    return-void

    .line 116
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
