.class public Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;
.super Ljava/lang/Object;
.source "BaiduThemeNotifier.java"


# static fields
.field public static final INTENT_ACTION:Ljava/lang/String; = "FROM_NOTIFICATION"

.field public static final NOTIFICATION_DOWNLOAD_STATUS:I = 0xfffe

.field private static mInstance:Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNM:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->mNM:Landroid/app/NotificationManager;

    .line 28
    return-void
.end method

.method public static cancelNotify(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 40
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 42
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 43
    return-void
.end method

.method private static getDownloadingText(JJ)Ljava/lang/String;
    .locals 5
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 132
    const-wide/16 v3, 0x0

    cmp-long v3, p0, v3

    if-gtz v3, :cond_0

    .line 133
    const-string v3, ""

    .line 139
    :goto_0
    return-object v3

    .line 135
    :cond_0
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p2

    div-long v0, v3, p0

    .line 136
    .local v0, progress:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getEmptyPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .parameter "context"

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.launcher.none"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;
    .locals 2
    .parameter "ctx"

    .prologue
    .line 33
    const-class v1, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->mInstance:Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->mInstance:Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;

    .line 36
    :cond_0
    sget-object v0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->mInstance:Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static showNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "ticker"
    .parameter "title"
    .parameter "text"
    .parameter "icon"
    .parameter "notify_id"
    .parameter "intent"

    .prologue
    .line 54
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p4, p2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 55
    .local v1, notification:Landroid/app/Notification;
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    if-nez p6, :cond_0

    .line 58
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->getEmptyPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 62
    :goto_0
    invoke-virtual {v1, p0, p2, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 64
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 65
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 66
    return-void

    .line 60
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, p6, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0
.end method

.method public static showNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;I)V
    .locals 5
    .parameter "context"
    .parameter "ticker"
    .parameter "title"
    .parameter "text"
    .parameter "icon"
    .parameter "notify_id"
    .parameter "intent"
    .parameter "flag"

    .prologue
    .line 71
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p4, p1, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 72
    .local v1, notification:Landroid/app/Notification;
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    if-nez p6, :cond_0

    .line 75
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->getEmptyPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 79
    :goto_0
    invoke-virtual {v1, p0, p2, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 81
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 82
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 83
    return-void

    .line 77
    .end local v0           #nm:Landroid/app/NotificationManager;
    :cond_0
    const/4 v3, 0x0

    invoke-static {p0, v3, p6, p7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0
.end method

.method public static showResultNotification(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;ZI)V
    .locals 17
    .parameter "context"
    .parameter "notify_id"
    .parameter "title"
    .parameter "intent"
    .parameter "isSuccess"
    .parameter "flag"

    .prologue
    .line 88
    const v6, 0x7f02024b

    .line 89
    .local v6, iconResource:I
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 90
    .local v8, notif:Landroid/app/Notification;
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p5

    invoke-static {v0, v10, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 92
    .local v3, contentIntent:Landroid/app/PendingIntent;
    iput v6, v8, Landroid/app/Notification;->icon:I

    .line 93
    if-eqz p4, :cond_0

    .line 94
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00ce

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 98
    :goto_0
    iput-object v3, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 99
    const/16 v10, 0x12

    iput v10, v8, Landroid/app/Notification;->flags:I

    .line 101
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f03007a

    invoke-direct {v4, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 102
    .local v4, contentView:Landroid/widget/RemoteViews;
    const v10, 0x7f080198

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c0005

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    if-eqz p4, :cond_1

    .line 104
    const v10, 0x7f08019c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c00ce

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, ""

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 108
    :goto_1
    const v10, 0x7f080197

    invoke-virtual {v4, v10, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 110
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v10, "HH:mm"

    invoke-direct {v5, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 111
    .local v5, df:Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, time:Ljava/lang/String;
    const v10, 0x7f080199

    invoke-virtual {v4, v10, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 114
    iput-object v4, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 116
    const-string v10, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 117
    .local v7, nm:Landroid/app/NotificationManager;
    move/from16 v0, p1

    invoke-virtual {v7, v0, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    return-void

    .line 96
    .end local v4           #contentView:Landroid/widget/RemoteViews;
    .end local v5           #df:Ljava/text/SimpleDateFormat;
    .end local v7           #nm:Landroid/app/NotificationManager;
    .end local v9           #time:Ljava/lang/String;
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c00d0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 106
    .restart local v4       #contentView:Landroid/widget/RemoteViews;
    :cond_1
    const v10, 0x7f08019c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c00d0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, ""

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public cancel(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->mNM:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/BaiduThemeNotifier;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 49
    :cond_0
    return-void
.end method
