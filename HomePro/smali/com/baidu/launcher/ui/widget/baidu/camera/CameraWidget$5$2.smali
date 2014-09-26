.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$2;
.super Ljava/lang/Object;
.source "CameraWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

.field final synthetic val$xyAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$2;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$2;->val$xyAnim:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$2;->val$xyAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 659
    return-void
.end method
