.class public Lcom/baidu/launcher/utils/AlarmHelper;
.super Ljava/lang/Object;
.source "AlarmHelper.java"


# static fields
.field public static final ALARM_TYPE_END:Ljava/lang/String; = "type_end"

.field public static final ALARM_TYPE_INTERVAL:Ljava/lang/String; = "type_interval"

.field public static final ALARM_TYPE_START:Ljava/lang/String; = "type_start"

.field private static final TAG:Ljava/lang/String; = "alarmUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveBusinessAlert(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/baidu/launcher/service/BusinessSyncIntentService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, service:Landroid/content/Intent;
    const-string v1, "type"

    const-string v2, "sync"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    return-void
.end method

.method public receiveStrategyAlert(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v8, -0x1

    .line 46
    const-string v1, "extra_time"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 47
    .local v4, timepos:J
    const-string v1, "extra_id"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 48
    .local v2, tableid:J
    const-string v1, "alarmUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timepos = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    cmp-long v1, v4, v8

    if-eqz v1, :cond_0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    .line 52
    new-instance v0, Lcom/baidu/launcher/app/StrategyAlertTask;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/app/StrategyAlertTask;-><init>(Landroid/content/Context;JJ)V

    .line 53
    .local v0, task:Lcom/baidu/launcher/app/StrategyAlertTask;
    sget-object v1, Lcom/baidu/launcher/app/LauncherApplication;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 55
    .end local v0           #task:Lcom/baidu/launcher/app/StrategyAlertTask;
    :cond_0
    return-void
.end method

.method public refreshAlarm(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 58
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "start"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "end"

    aput-object v4, v5, v3

    .line 64
    .local v5, projection:[Ljava/lang/String;
    const-string v3, "alarmUtils"

    const-string v4, "refresh alarm"

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/baidu/launcher/utils/Constant;->STRATEGY_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 69
    .local v12, cursor:Landroid/database/Cursor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 70
    .local v10, current:J
    const-string v3, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 72
    .local v9, am:Landroid/app/AlarmManager;
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    :cond_0
    const-string v3, "start"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 76
    .local v19, start:J
    const-string v3, "end"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 77
    .local v15, end:J
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 79
    .local v21, tableid:J
    cmp-long v3, v15, v10

    if-lez v3, :cond_4

    .line 80
    const-wide/16 v13, 0x0

    .line 82
    .local v13, elapsed:J
    sub-long v3, v19, v10

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_1

    .line 83
    sub-long v13, v19, v10

    .line 86
    :cond_1
    new-instance v17, Landroid/content/Intent;

    const-string v3, "com.baidu.launcher.alarm.strategy"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v17, intent:Landroid/content/Intent;
    const-string v3, "extra_time"

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 88
    const-string v3, "extra_id"

    move-object/from16 v0, v17

    move-wide/from16 v1, v21

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 90
    const/4 v3, 0x1

    const/high16 v4, 0x1000

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v18

    .line 93
    .local v18, pendingIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v13

    move-object/from16 v0, v18

    invoke-virtual {v9, v3, v6, v7, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 96
    const-string v3, "alarmUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set strategy elapsed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", start = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .end local v13           #elapsed:J
    .end local v15           #end:J
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #pendingIntent:Landroid/app/PendingIntent;
    .end local v19           #start:J
    .end local v21           #tableid:J
    :cond_2
    :goto_0
    if-eqz v12, :cond_3

    .line 105
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_3
    return-void

    .line 101
    .restart local v15       #end:J
    .restart local v19       #start:J
    .restart local v21       #tableid:J
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public setRecommendAppAlarm(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "intervalMillSecond"

    .prologue
    .line 24
    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 26
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.baidu.launcher.alarm.business"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, intent:Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {p1, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 31
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 34
    const-string v3, "alarmUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set alarm setRecommendAppAlarm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
