.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$1;
.super Landroid/os/Handler;
.source "OptimizationUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->updateData()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x2713
        :pswitch_0
    .end packed-switch
.end method
