.class Lcom/baidu/launcher/ui/homeview/Workspace$9;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;->showAllAppItemAnim(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 5387
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$9;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 5391
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$9;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$9;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$9;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    const/4 v3, 0x0

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mFirstDownX:F
    invoke-static {v2, v3}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$8202(Lcom/baidu/launcher/ui/homeview/Workspace;F)F

    move-result v2

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mMoveDeltaX:F
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$8102(Lcom/baidu/launcher/ui/homeview/Workspace;F)F

    move-result v1

    #setter for: Lcom/baidu/launcher/ui/homeview/Workspace;->mBeforeDegree:F
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->access$8002(Lcom/baidu/launcher/ui/homeview/Workspace;F)F

    .line 5392
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 5389
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 5388
    return-void
.end method
