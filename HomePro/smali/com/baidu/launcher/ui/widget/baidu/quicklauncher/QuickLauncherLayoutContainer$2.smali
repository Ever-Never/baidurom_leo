.class Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;
.super Ljava/lang/Object;
.source "QuickLauncherLayoutContainer.java"

# interfaces
.implements Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->rotateToTargetAngle(FIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlinging:Z

    .line 297
    return-void
.end method

.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlinging:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$400(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v1, v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTargetAngle:F

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->setOvalStartAngle(F)V

    .line 288
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$400(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iget v1, v1, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mAlpha:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->setAlpha(I)V

    .line 289
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$400(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$400(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mCenterTabs:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->access$400(Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;)Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->getBottom()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/CenterTabs;->invalidate(IIII)V

    .line 290
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    iput-boolean v3, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlinging:Z

    .line 292
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 282
    return-void
.end method

.method public onAnimationStart(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/baidu/launcher/ui/widget/baidu/quicklauncher/QuickLauncherLayoutContainer;->mFlinging:Z

    .line 278
    return-void
.end method
