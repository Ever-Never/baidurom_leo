.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraWidget.java"


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

.field final synthetic val$reScaleValue:F


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->val$reScaleValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

    iget v1, v1, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->val$tempTranslationY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 647
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 648
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 649
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->val$reScaleValue:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 650
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->val$reScaleValue:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 651
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mCanShut:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1502(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;Z)Z

    .line 652
    return-void
.end method
