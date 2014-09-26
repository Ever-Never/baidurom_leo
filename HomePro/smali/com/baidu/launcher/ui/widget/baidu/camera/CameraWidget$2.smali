.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$2;
.super Ljava/lang/Thread;
.source "CameraWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraInOtherThread()V
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
    .line 525
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCamera()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    .line 529
    return-void
.end method
