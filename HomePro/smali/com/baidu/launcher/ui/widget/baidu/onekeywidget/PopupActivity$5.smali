.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "PopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 599
    const-string v3, "ID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 600
    .local v1, id:I
    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    const-string v3, "com.baidu.launcher.memoryInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 602
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 605
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    const-string v4, "com.baidu.launcher.memoryUsedSize"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I
    invoke-static {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$802(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;I)I

    .line 606
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    const-string v4, "com.baidu.launcher.memoryFreeSize"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I
    invoke-static {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$602(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;I)I

    .line 609
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I

    move-result v3

    if-nez v3, :cond_0

    .line 610
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$800(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I
    invoke-static {v4}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$800(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I

    move-result v4

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I

    move-result v5

    add-int/2addr v4, v5

    div-int v2, v3, v4

    .line 611
    .local v2, rate:I
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryBar(I)V
    invoke-static {v3, v2}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1700(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;I)V

    .line 612
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryTips()V
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$400(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V

    goto :goto_0
.end method
