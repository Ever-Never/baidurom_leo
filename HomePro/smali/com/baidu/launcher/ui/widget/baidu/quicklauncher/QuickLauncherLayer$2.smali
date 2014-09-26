.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;
.super Ljava/lang/Object;
.source "QuickLauncherLayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->close()V
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
    .line 181
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 204
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isTransing:Z
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$002(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;Z)Z

    .line 205
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->setVisibility(I)V

    .line 206
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->clearAllIcons()V
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$300(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)V

    .line 207
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f00

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 208
    .local v0, show:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 209
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 210
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 223
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$500(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->startAnimation(Landroid/view/animation/Animation;)V

    .line 224
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 201
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 184
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    const/4 v2, 0x1

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isTransing:Z
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$002(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;Z)Z

    .line 185
    new-instance v0, Lcom/baidu/launcher/ui/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;-><init>()V

    .line 186
    .local v0, va:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setFloatValues([F)V

    .line 187
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 188
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 197
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    .line 198
    return-void

    .line 186
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
