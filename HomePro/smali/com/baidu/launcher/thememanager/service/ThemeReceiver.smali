.class public Lcom/baidu/launcher/thememanager/service/ThemeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThemeReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BootReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startFatchThemeService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-class v1, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 108
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    .line 27
    .local v18, action:Ljava/lang/String;
    const-string v4, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ThemeReceiver: getAction: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/launcher/thememanager/service/ThemeReceiver;->startFatchThemeService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string v4, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.MEDIA_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.MEDIA_SHARED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/launcher/thememanager/service/ThemeReceiver;->startFatchThemeService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_3
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 41
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 42
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelAllDownloadWithNotice(Landroid/content/Context;)V

    goto :goto_0

    .line 44
    :cond_4
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 46
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 47
    .local v19, data:Landroid/net/Uri;
    if-eqz v19, :cond_0

    .line 48
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v23

    .line 49
    .local v23, pkgName:Ljava/lang/String;
    if-eqz v23, :cond_0

    const-string v4, "com.baidu.launcher.theme"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v11, -0x1

    if-le v4, v11, :cond_0

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/service/ThemeReceiver;->startFatchThemeService(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v19           #data:Landroid/net/Uri;
    .end local v23           #pkgName:Ljava/lang/String;
    :cond_6
    const-string v4, "com.baidu.launcher.download_progress"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 55
    const-string v4, "extra_mimetype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 56
    .local v21, mimeType:Ljava/lang/String;
    const-string v4, "extra_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 57
    .local v5, id:J
    const-string v4, "extra_total"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 58
    .local v7, total:J
    const-string v4, "extra_current"

    const-wide/16 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 59
    .local v9, current:J
    const-string v4, "extra_url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 60
    .local v12, url:Ljava/lang/String;
    const-string v4, "theme/ICON"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 62
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v4

    invoke-virtual/range {v4 .. v10}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->updateProgressNotification(JJJ)V

    .line 65
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v11

    const/16 v13, 0x69

    move-wide v14, v7

    move-wide/from16 v16, v9

    invoke-virtual/range {v11 .. v17}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->updateDownload(Ljava/lang/String;IJJ)V

    .line 67
    new-instance v20, Landroid/content/Intent;

    const-string v4, "com.baidu.thememanager.action.downloadstatechange"

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v20, intent_state:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 70
    .end local v20           #intent_state:Landroid/content/Intent;
    :cond_7
    const-string v4, "wallpaper"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 74
    .end local v5           #id:J
    .end local v7           #total:J
    .end local v9           #current:J
    .end local v12           #url:Ljava/lang/String;
    .end local v21           #mimeType:Ljava/lang/String;
    :cond_8
    const-string v4, "com.baidu.launcher.download_completed"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    const-string v4, "extra_notify_type"

    const/4 v11, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    .line 78
    .local v22, notify_type:I
    const-string v4, "BootReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "need notify "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/baidu/launcher/thememanager/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/16 v4, 0xa

    move/from16 v0, v22

    if-lt v0, v4, :cond_0

    const/16 v4, 0x14

    move/from16 v0, v22

    if-gt v0, v4, :cond_0

    .line 81
    const-string v4, "extra_id"

    const-wide/16 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 82
    .restart local v5       #id:J
    const-string v4, "extra_result"

    const/4 v11, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 83
    .local v24, result:I
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/network/http/DownloadNotifManager;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v5, v6, v0}, Lcom/baidu/launcher/network/http/DownloadNotifManager;->updateCompletedNotification(JI)V

    .line 85
    const-class v4, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 86
    const-string v4, "extra_notify_type"

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-virtual/range {p1 .. p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
