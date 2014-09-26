.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;
.super Landroid/os/Handler;
.source "OneKeyWidgetMedium.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 68
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 70
    :sswitch_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateUIInAnimation()V
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V

    .line 72
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mProgressAnimationStatus:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    iget-object v1, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2714

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 74
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    iget-object v1, v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x28

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 78
    .end local v0           #message:Landroid/os/Message;
    :sswitch_1
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mShowPercentTips:Z
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$202(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;Z)Z

    .line 79
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->updateMemoryTips()V
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$300(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)V

    goto :goto_0

    .line 83
    :sswitch_2
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mCleanAllOperationOver:Z
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$402(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;Z)Z

    .line 84
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v2

    long-to-int v2, v2

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$502(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;I)I

    .line 85
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemTotalSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryFreeSize:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$500(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->mMemoryUsedSize:I
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;->access$702(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetMedium;I)I

    goto :goto_0

    .line 68
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x2710 -> :sswitch_2
        0x2714 -> :sswitch_0
    .end sparse-switch
.end method
