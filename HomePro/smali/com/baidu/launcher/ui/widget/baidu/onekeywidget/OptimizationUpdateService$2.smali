.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 188
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const-string v0, "OptimizationUpdateService"

    const-string v1, "screen off"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->exitTimerThread()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->access$200(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "OptimizationUpdateService"

    const-string v1, "screen on"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->startTimerThread()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;->access$300(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/OptimizationUpdateService;)V

    goto :goto_0
.end method
