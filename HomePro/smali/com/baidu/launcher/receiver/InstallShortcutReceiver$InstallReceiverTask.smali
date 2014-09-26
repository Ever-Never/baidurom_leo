.class Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/receiver/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallReceiverTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Landroid/content/Intent;

.field final synthetic this$0:Lcom/baidu/launcher/receiver/InstallShortcutReceiver;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/receiver/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;->this$0:Lcom/baidu/launcher/receiver/InstallShortcutReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;->context:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;->data:Landroid/content/Intent;

    .line 52
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 56
    const-string v4, "InstallShortcutReceiver"

    const-string v5, "install receiver task run"

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget v3, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->currentScreen:I

    .line 59
    .local v3, screen:I
    iget-object v4, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;->this$0:Lcom/baidu/launcher/receiver/InstallShortcutReceiver;

    iget-object v5, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;->data:Landroid/content/Intent;

    #calls: Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    invoke-static {v4, v5, v6, v3}, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->access$000(Lcom/baidu/launcher/receiver/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    .line 60
    .local v1, installed:Z
    if-nez v1, :cond_0

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v4, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->screenCount:I

    if-ge v0, v4, :cond_0

    .line 63
    if-eq v0, v3, :cond_2

    iget-object v4, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;->this$0:Lcom/baidu/launcher/receiver/InstallShortcutReceiver;

    iget-object v5, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;->data:Landroid/content/Intent;

    #calls: Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    invoke-static {v4, v5, v6, v0}, Lcom/baidu/launcher/receiver/InstallShortcutReceiver;->access$000(Lcom/baidu/launcher/receiver/InstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    const/4 v1, 0x1

    .line 70
    .end local v0           #i:I
    :cond_0
    if-nez v1, :cond_1

    .line 72
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 73
    .local v2, msg:Landroid/os/Message;
    const/16 v4, 0x65

    iput v4, v2, Landroid/os/Message;->what:I

    .line 74
    iget-object v4, p0, Lcom/baidu/launcher/receiver/InstallShortcutReceiver$InstallReceiverTask;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/app/LauncherApplication;

    iget-object v4, v4, Lcom/baidu/launcher/app/LauncherApplication;->handler:Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;

    invoke-virtual {v4, v2}, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    return-void

    .line 62
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
