.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->startPhotoAnim(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

.field final synthetic val$scaleWidth:I

.field final synthetic val$tempTranslationY:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->val$scaleWidth:I

    iput p3, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->val$tempTranslationY:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 11
    .parameter "animation"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 637
    const-string v5, "alpha"

    new-array v6, v10, [F

    const/4 v7, 0x0

    aput v7, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 638
    .local v0, alpha:Landroid/animation/PropertyValuesHolder;
    iget v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->val$scaleWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageViewRealWidth:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1300(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 639
    .local v1, reScaleValue:F
    const-string v5, "scaleX"

    new-array v6, v10, [F

    aput v1, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 640
    .local v2, reScaleX:Landroid/animation/PropertyValuesHolder;
    const-string v5, "scaleY"

    new-array v6, v10, [F

    aput v1, v6, v9

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 641
    .local v3, reScaleY:Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mTempImageView:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;

    move-result-object v5

    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 642
    .local v4, xyAnim:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x258

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 643
    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;

    invoke-direct {v5, p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;F)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 654
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 655
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    new-instance v6, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$2;

    invoke-direct {v6, p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;Landroid/animation/ObjectAnimator;)V

    const-wide/16 v7, 0x15e

    invoke-virtual {v5, v6, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 661
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->isCanUpdate:Z
    invoke-static {v5, v10}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$102(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;Z)Z

    .line 662
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$500(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 663
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mBumpScrollView:Landroid/widget/ScrollView;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1600(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5, v9, v9}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 664
    return-void
.end method
