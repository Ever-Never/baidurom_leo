.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$2;
.super Ljava/lang/Object;
.source "QuickLauncherMananger.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->expandQuickLauncherLayer(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->mQuickLauncherWidget:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;->access$100(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherMananger;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherWidget;->setVisibility(I)V

    .line 271
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 267
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 264
    return-void
.end method
