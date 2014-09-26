.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$1;
.super Ljava/lang/Object;
.source "QuickLauncherLayer.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/baidu/launcher/ui/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 193
    .local v0, progress:F
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;

    iget-object v1, v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    const/high16 v2, 0x4334

    mul-float/2addr v2, v0

    float-to-int v2, v2

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mBgAlpha:I
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$102(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;I)I

    .line 194
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;

    iget-object v1, v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->invalidate()V

    .line 195
    return-void
.end method
