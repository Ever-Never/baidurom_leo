.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;
.super Landroid/database/ContentObserver;
.source "CameraWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 818
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    .line 819
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 820
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x6

    .line 824
    const-string v0, "CameraWidget_tag"

    const-string v1, "PhotoFileObserver onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$500(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 826
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$PhotoFileObserver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$500(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 827
    return-void
.end method
