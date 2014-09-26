.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->showToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 559
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$3;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 567
    return-void
.end method
