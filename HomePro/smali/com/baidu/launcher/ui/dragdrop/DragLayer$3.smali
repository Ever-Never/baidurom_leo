.class Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateView(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

.field final synthetic val$fadeOut:Z

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Ljava/lang/Runnable;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    iput-object p2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;->val$fadeOut:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;->val$fadeOut:Z

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    #calls: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->fadeOutDragView()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$500(Lcom/baidu/launcher/ui/dragdrop/DragLayer;)V

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$3;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/ui/dragdrop/DragLayer;->mDropView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->access$602(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 498
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 494
    return-void
.end method
