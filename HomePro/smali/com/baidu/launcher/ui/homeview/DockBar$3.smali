.class Lcom/baidu/launcher/ui/homeview/DockBar$3;
.super Ljava/lang/Object;
.source "DockBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/DockBar;->onDropCompleted(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/DockBar;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$3;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$3;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    #getter for: Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$200(Lcom/baidu/launcher/ui/homeview/DockBar;)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$3;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    #getter for: Lcom/baidu/launcher/ui/homeview/DockBar;->mAnimator:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$200(Lcom/baidu/launcher/ui/homeview/DockBar;)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->end()V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$3;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    #calls: Lcom/baidu/launcher/ui/homeview/DockBar;->resetItem()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$300(Lcom/baidu/launcher/ui/homeview/DockBar;)V

    .line 553
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$3;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    #getter for: Lcom/baidu/launcher/ui/homeview/DockBar;->mDraggedView:Lcom/baidu/launcher/ui/homeview/DockBarItem;
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$000(Lcom/baidu/launcher/ui/homeview/DockBar;)Lcom/baidu/launcher/ui/homeview/DockBarItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/DockBarItem;->setVisibility(I)V

    .line 554
    return-void
.end method
