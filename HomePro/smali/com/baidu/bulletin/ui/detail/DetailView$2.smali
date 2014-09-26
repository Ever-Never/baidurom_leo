.class Lcom/baidu/bulletin/ui/detail/DetailView$2;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "DetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/DetailView;->close(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/DetailView;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailView;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailView$2;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView$2;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/detail/DetailView;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView$2;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    #getter for: Lcom/baidu/bulletin/ui/detail/DetailView;->mDetailContentView:Lcom/baidu/bulletin/ui/detail/IDetailContentView;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->access$200(Lcom/baidu/bulletin/ui/detail/DetailView;)Lcom/baidu/bulletin/ui/detail/IDetailContentView;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bulletin/ui/detail/IDetailContentView;->destroy()V

    .line 148
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailView$2;->this$0:Lcom/baidu/bulletin/ui/detail/DetailView;

    #calls: Lcom/baidu/bulletin/ui/detail/DetailView;->disableAndBuildHardwareLayer()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailView;->access$300(Lcom/baidu/bulletin/ui/detail/DetailView;)V

    .line 149
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->notifyDetailClosed()V

    .line 152
    :cond_0
    return-void
.end method
