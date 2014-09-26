.class Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "OpenThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.baidu.thememanager.ui.parsestatus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    const-string v3, "com.baidu.thememanager.extra.insertresult"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 148
    .local v2, scanId:I
    const-string v3, "com.baidu.thememanager.extra.filepath"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, resultPath:Ljava/lang/String;
    const-string v3, "OpenThemeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", scan id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-nez v1, :cond_0

    .line 154
    const-string v1, ""

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$000(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 157
    if-lez v2, :cond_2

    .line 158
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #setter for: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mScanning:Z
    invoke-static {v3, v7}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$102(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;Z)Z

    .line 159
    new-instance v3, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    invoke-direct {v3, v4}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;-><init>(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    .end local v1           #resultPath:Ljava/lang/String;
    .end local v2           #scanId:I
    :cond_1
    :goto_0
    return-void

    .line 161
    .restart local v1       #resultPath:Ljava/lang/String;
    .restart local v2       #scanId:I
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isSdcardAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #calls: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showFailed()V
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$300(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #calls: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showNoSDCard()V
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V

    goto :goto_0

    .line 170
    :cond_4
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isSdcardAvailable()Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$200(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$1;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #calls: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showNoSDCard()V
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$400(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V

    goto :goto_0
.end method
