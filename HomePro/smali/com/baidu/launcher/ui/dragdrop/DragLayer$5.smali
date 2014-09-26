.class Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

.field final synthetic val$fadeOut:Z

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Ljava/lang/Runnable;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    iput-object p2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->val$fadeOut:Z

    iput-object p4, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 615
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->val$fadeOut:Z

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #calls: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->fadeOutDragView()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$500(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)V

    .line 620
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 621
    return-void

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$5;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #setter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v0, v2}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$602(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 608
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 604
    return-void
.end method
