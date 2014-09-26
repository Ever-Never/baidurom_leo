.class Lcom/baidu/launcher/ui/logic/ViewManager$1;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/logic/ViewManager;->switchView(Lcom/baidu/launcher/ui/logic/IBaseView;Lcom/baidu/launcher/ui/logic/IBaseView$SwitchData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/logic/ViewManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/baidu/launcher/ui/logic/ViewManager$1;->this$0:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/16 v1, 0x8

    .line 210
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager$1;->this$0:Lcom/baidu/launcher/ui/logic/ViewManager;

    #getter for: Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->access$000(Lcom/baidu/launcher/ui/logic/ViewManager;)Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager$1;->this$0:Lcom/baidu/launcher/ui/logic/ViewManager;

    #getter for: Lcom/baidu/launcher/ui/logic/ViewManager;->mDockbar:Lcom/baidu/launcher/ui/homeview/DockBar;
    invoke-static {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->access$100(Lcom/baidu/launcher/ui/logic/ViewManager;)Lcom/baidu/launcher/ui/homeview/DockBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBar;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager$1;->this$0:Lcom/baidu/launcher/ui/logic/ViewManager;

    #getter for: Lcom/baidu/launcher/ui/logic/ViewManager;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->access$200(Lcom/baidu/launcher/ui/logic/ViewManager;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager$1;->this$0:Lcom/baidu/launcher/ui/logic/ViewManager;

    #getter for: Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->access$000(Lcom/baidu/launcher/ui/logic/ViewManager;)Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->setHomeViewClickable(Z)V

    .line 214
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 208
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager$1;->this$0:Lcom/baidu/launcher/ui/logic/ViewManager;

    #getter for: Lcom/baidu/launcher/ui/logic/ViewManager;->mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->access$000(Lcom/baidu/launcher/ui/logic/ViewManager;)Lcom/baidu/launcher/ui/homeview/HomeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/HomeView;->setHomeViewClickable(Z)V

    .line 207
    return-void
.end method
