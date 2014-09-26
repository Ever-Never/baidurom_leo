.class Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;
.super Ljava/lang/Thread;
.source "CameraWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->startWorkingAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 671
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 674
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 675
    .local v7, startTime:J
    const/4 v0, 0x0

    .line 676
    .local v0, count:I
    const/4 v5, 0x1

    .line 677
    .local v5, flag:Z
    :goto_0
    if-eqz v5, :cond_2

    .line 679
    const-wide/16 v9, 0xc8

    :try_start_0
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 684
    .local v2, curr:J
    sub-long v9, v2, v7

    iget v11, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;->val$duration:I

    int-to-long v11, v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    .line 685
    const/4 v5, 0x0

    .line 687
    :cond_0
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mWorkingDrawables:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$600(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v0, v9, :cond_1

    .line 688
    const/4 v0, 0x0

    .line 690
    :cond_1
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$500(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x7

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 691
    .local v6, message:Landroid/os/Message;
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$500(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v1

    .line 692
    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_0

    .line 680
    .end local v2           #curr:J
    .end local v6           #message:Landroid/os/Message;
    :catch_0
    move-exception v4

    .line 681
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 693
    .end local v4           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget$6;->this$0:Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;->access$500(Lcom/baidu/launcher/ui/widget/baidu/camera/CameraWidget;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 694
    return-void
.end method
