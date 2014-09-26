.class Lcom/baidu/yi/ads/AdView$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/yi/ads/AdView;->initCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/AdView;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView$1;->this$0:Lcom/baidu/yi/ads/AdView;

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$1;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$42(Lcom/baidu/yi/ads/AdView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$1;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v0, v0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$1;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$42(Lcom/baidu/yi/ads/AdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$1;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v1, v1, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 891
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$1;->this$0:Lcom/baidu/yi/ads/AdView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$1;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/AdView;->removeAllViews()V

    .line 894
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$1;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$41(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/ActionExecutionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 895
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$1;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$41(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/ActionExecutionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/yi/ads/ActionExecutionListener;->onAdViewClosed()V

    .line 897
    :cond_1
    return-void
.end method
