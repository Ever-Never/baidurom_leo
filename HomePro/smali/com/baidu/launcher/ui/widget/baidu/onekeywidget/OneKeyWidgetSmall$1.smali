.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;
.super Landroid/os/Handler;
.source "OneKeyWidgetSmall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 60
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 62
    :sswitch_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mProgressAnimationStatus:I
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->updateUIAnimation()V
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->access$100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;)V

    .line 65
    const/16 v1, 0x2714

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 66
    .local v0, messge:Landroid/os/Message;
    const-wide/16 v1, 0x28

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 72
    .end local v0           #messge:Landroid/os/Message;
    :sswitch_1
    const-string v1, "OneKeyWidgetSmall"

    const-string v2, "CLEAN_ALL_APPS_FINISH msg received"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;

    const/4 v2, 0x1

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->mCleanAllOperationOver:Z
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;->access$202(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OneKeyWidgetSmall;Z)Z

    goto :goto_0

    .line 60
    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_1
        0x2714 -> :sswitch_0
    .end sparse-switch
.end method
