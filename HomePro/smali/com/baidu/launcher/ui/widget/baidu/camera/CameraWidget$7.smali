.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$7;
.super Landroid/content/BroadcastReceiver;
.source "CameraWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;
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
    .line 731
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$7;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 734
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    if-ne v0, v1, :cond_1

    .line 735
    const-string v0, "CameraWidget_tag"

    const-string v1, "ACTION_TIME_TICK"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$7;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->updateTimeView()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1700(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    if-ne v0, v1, :cond_2

    .line 738
    const-string v0, "CameraWidget_tag"

    const-string v1, "ACTION_TIME_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 739
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    if-ne v0, v1, :cond_3

    .line 740
    const-string v0, "CameraWidget_tag"

    const-string v1, "ACTION_TIMEZONE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 741
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    if-ne v0, v1, :cond_0

    .line 742
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$7;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->stopCameraOnMainThread()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$1800(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)V

    goto :goto_0
.end method
