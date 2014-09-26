.class public Lcom/baidu/launcher/receiver/EventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 27
    .local v8, action:Ljava/lang/String;
    const-string v1, "com.baidu.launcher.download_progress"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    :goto_0
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    :cond_0
    :goto_1
    return-void

    .line 30
    :cond_1
    const-string v1, "EventReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "action : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v1, "com.baidu.launcher.download_progress"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50
    const-string v1, "extra_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 51
    .local v2, id:J
    const-string v1, "extra_total"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 52
    .local v4, total:J
    const-string v1, "extra_current"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 54
    .local v6, current:J
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v1

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->updateProgressNotification(JJJ)V

    goto :goto_1

    .line 57
    .end local v2           #id:J
    .end local v4           #total:J
    .end local v6           #current:J
    :cond_3
    const-string v1, "com.baidu.launcher.download_completed"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "extra_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 59
    .restart local v2       #id:J
    const-string v1, "extra_result"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 60
    .local v11, result:I
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v11}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->updateCompletedNotification(JI)V

    .line 62
    const-string v1, "extra_dest_path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 64
    .local v10, path:Ljava/lang/String;
    const-string v1, "extra_notify_type"

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 66
    .local v9, need_notify:I
    const/4 v1, -0x1

    if-eq v9, v1, :cond_0

    .line 67
    new-instance v12, Lcom/baidu/launcher/app/DownloadFinishTask;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v11, v9, v10}, Lcom/baidu/launcher/app/DownloadFinishTask;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    .line 68
    .local v12, task:Lcom/baidu/launcher/app/DownloadFinishTask;
    sget-object v1, Lcom/baidu/launcher/app/LauncherApplication;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v12}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1
.end method
