.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1$2;
.super Ljava/lang/Object;
.source "QuickLauncherLayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->isTransing:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;->access$002(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayer;Z)Z

    .line 153
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 149
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 146
    return-void
.end method
