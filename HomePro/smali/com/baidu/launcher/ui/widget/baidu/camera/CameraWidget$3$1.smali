.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3$1;
.super Ljava/lang/Object;
.source "CameraWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;)V
    .locals 0
    .parameter

    .prologue
    .line 559
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 562
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;

    iget-object v1, v1, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mToastView:Landroid/view/View;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/view/View;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 563
    .local v0, toastReAlpha:Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 564
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 565
    return-void
.end method
