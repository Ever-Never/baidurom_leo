.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$2;
.super Ljava/lang/Object;
.source "QuickLauncherLayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
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
    .line 210
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isExpanded:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$402(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;Z)Z

    .line 220
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$500(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->setVisibility(I)V

    .line 221
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 216
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 213
    return-void
.end method
