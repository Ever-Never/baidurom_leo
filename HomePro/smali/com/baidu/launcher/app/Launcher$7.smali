.class Lcom/baidu/launcher/app/Launcher$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/Launcher;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$7;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 917
    new-instance v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;-><init>()V

    .line 918
    .local v0, switchData:Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;
    iput-boolean v2, v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->hideAnim:Z

    .line 919
    iput-boolean v2, v0, Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;->showAnim:Z

    .line 920
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$7;->this$0:Lcom/baidu/launcher/app/Launcher;

    #setter for: Lcom/baidu/launcher/app/Launcher;->isAppListViewAnim:Z
    invoke-static {v1, v2}, Lcom/baidu/launcher/app/Launcher;->access$1102(Lcom/baidu/launcher/app/Launcher;Z)Z

    .line 921
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$7;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1}, Lcom/baidu/launcher/app/Launcher;->isInBulletinScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$7;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v1}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 924
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$7;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v1}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v1

    const v2, 0x7f08013a

    invoke-virtual {v1, v2, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(ILcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$7;->this$0:Lcom/baidu/launcher/app/Launcher;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/launcher/app/Launcher;->isAppListViewAnim:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/app/Launcher;->access$1102(Lcom/baidu/launcher/app/Launcher;Z)Z

    .line 915
    return-void
.end method
