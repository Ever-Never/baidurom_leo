.class public Lcom/baidu/launcher/receiver/UninstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UninstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;
    }
.end annotation


# static fields
.field private static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "data"

    .prologue
    .line 26
    const-string v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;-><init>(Lcom/baidu/launcher/receiver/UninstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    .local v0, task:Lcom/baidu/launcher/receiver/UninstallShortcutReceiver$UninstallReceiverTask;
    sget-object v1, Lcom/baidu/launcher/app/LauncherApplication;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
