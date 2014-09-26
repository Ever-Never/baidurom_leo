.class Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThemeOnlineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 392
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.baidu.thememanager.action.downloadstatechange"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 403
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->update_button()V
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    goto :goto_0

    .line 405
    :cond_2
    const-string v2, "com.baidu.thememanager.ui.parsestatus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    const-string v2, "com.baidu.thememanager.extra.insertresult"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 409
    .local v1, result:I
    if-le v1, v3, :cond_0

    .line 410
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$DownloadReceiver;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->update_button()V
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V

    goto :goto_0
.end method
