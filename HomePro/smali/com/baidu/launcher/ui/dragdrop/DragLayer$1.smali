.class Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/dragdrop/DragLayer;->animateViewIntoPosition(Landroid/view/View;Landroid/view/View;[ILcom/baidu/launcher/ui/dragdrop/DragSource;Ljava/lang/Object;Ljava/lang/Runnable;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

.field final synthetic val$onFinishAnimationRunnable:Ljava/lang/Runnable;

.field final synthetic val$originView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    iput-object p2, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;->val$originView:Landroid/view/View;

    iput-object p3, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 340
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;->val$originView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 341
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;->val$originView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 343
    .local v0, oa:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 344
    new-instance v1, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1$1;-><init>(Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 356
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 366
    .end local v0           #oa:Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/baidu/launcher/ui/dragdrop/DragLayer$1;->val$onFinishAnimationRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 342
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
