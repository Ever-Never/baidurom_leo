.class Lcom/baidu/bulletin/ui/navigator/Navigator$4;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/navigator/Navigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$4;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$4;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #getter for: Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$100(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$4;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #getter for: Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$100(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 219
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$4;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #getter for: Lcom/baidu/bulletin/ui/navigator/Navigator;->mNavigatorView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$100(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$4;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/navigator/Navigator;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 221
    :cond_0
    return-void
.end method
