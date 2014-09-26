.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1$1;
.super Ljava/lang/Object;
.source "CameraWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1$1;->this$1:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mAutoFocusView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$400(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    return-void
.end method
