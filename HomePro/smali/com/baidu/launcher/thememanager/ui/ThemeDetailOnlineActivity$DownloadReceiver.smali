.class Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThemeDetailOnlineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 561
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 564
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$1900(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mKey:Ljava/lang/String;
    invoke-static {v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$500(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getThemeStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    move-result-object v4

    .line 569
    .local v4, status:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    const-string v5, "com.baidu.thememanager.action.downloadstatechange"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 571
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    invoke-virtual {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$2000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Landroid/widget/Button;

    move-result-object v6

    iget v7, v4, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    iget v8, v4, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->percent:I

    invoke-static {v5, v6, v7, v9, v8}, Lcom/baidu/launcher/thememanager/util/Utils;->setButtonState(Landroid/content/Context;Landroid/widget/Button;III)V

    goto :goto_0

    .line 574
    :cond_2
    const-string v5, "com.baidu.thememanager.ui.parsestatus"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 576
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    invoke-virtual {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;
    invoke-static {v6}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$2000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Landroid/widget/Button;

    move-result-object v6

    iget v7, v4, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    iget v8, v4, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->percent:I

    invoke-static {v5, v6, v7, v9, v8}, Lcom/baidu/launcher/thememanager/util/Utils;->setButtonState(Landroid/content/Context;Landroid/widget/Button;III)V

    .line 579
    const-string v5, "com.baidu.thememanager.extra.filepath"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, path:Ljava/lang/String;
    const-string v5, "com.baidu.thememanager.extra.insertresult"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 583
    .local v3, result:I
    if-le v3, v10, :cond_0

    .line 584
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$2100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 585
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    const-class v6, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    .local v1, it:Landroid/content/Intent;
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mFilePath:Ljava/lang/String;
    invoke-static {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$2100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 589
    const-string v5, "title"

    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTitle:Ljava/lang/String;
    invoke-static {v6}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    const-string v5, "_id"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v5, "fragment_index"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    invoke-virtual {v5, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->startActivity(Landroid/content/Intent;)V

    .line 593
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;

    invoke-virtual {v5}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->finish()V

    goto/16 :goto_0
.end method
