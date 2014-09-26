.class public Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;
.super Ljava/lang/Object;
.source "DateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$1;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_TIME_TICK:Ljava/lang/String; = "com.baidu.launcher.weather.TIME_TICK"

.field private static final CLOCK_INTERVAL:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "DateManager"

.field private static mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;


# instance fields
.field private ACTION_QUICKBOOT_BOOT_COMPLETE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_BOOT_COMPLETE"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->ACTION_QUICKBOOT_BOOT_COMPLETE:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->startTimeTickAlarm(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->ACTION_QUICKBOOT_BOOT_COMPLETE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-static {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->resetTimeTickAlarm(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getHour(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getMinute(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getAMorPM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildTimeTickPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2
    .parameter "context"
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getAMorPM(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 153
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x0

    .line 159
    :goto_0
    return-object v1

    .line 156
    :cond_0
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 157
    const-string v1, "AM"

    goto :goto_0

    .line 159
    :cond_1
    const-string v1, "PM"

    goto :goto_0
.end method

.method private getDate(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 166
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 167
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 169
    const-string v2, "MM-dd-EEEE"

    .line 171
    .local v2, format:Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, raw:Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, date:[Ljava/lang/String;
    return-object v1
.end method

.method private getHour(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 130
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 131
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 133
    .local v2, is24HourFormat:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 140
    .local v1, hour:I
    :cond_0
    :goto_0
    return v1

    .line 136
    .end local v1           #hour:I
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 137
    .restart local v1       #hour:I
    if-nez v1, :cond_0

    .line 138
    const/16 v1, 0xc

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMinute(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 145
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 146
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 147
    .local v1, min:I
    return v1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.launcher.weather.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->ACTION_QUICKBOOT_BOOT_COMPLETE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$1;)V

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;

    .line 62
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    const-string v1, "DateManager"

    const-string v2, "init"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private release()V
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangedReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    const-string v1, "DateManager"

    const-string v2, "release"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DateManager"

    const-string v2, "error happens when release:"

    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static resetTimeTickAlarm(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 187
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const-string v1, "com.baidu.launcher.weather.TIME_TICK"

    invoke-static {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->buildTimeTickPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 189
    invoke-static {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->startTimeTickAlarm(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method private static startTimeTickAlarm(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const-wide/32 v4, 0xea60

    .line 177
    const-string v0, "com.baidu.launcher.weather.TIME_TICK"

    invoke-static {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->buildTimeTickPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 179
    .local v6, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 180
    .local v7, now:J
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x1

    add-long v2, v7, v4

    rem-long v9, v7, v4

    sub-long/2addr v2, v9

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 184
    return-void
.end method


# virtual methods
.method public addListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 104
    const-string v0, "DateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener:size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->init()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getHour(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getMinute(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getAMorPM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;->onTimeChanged(IILjava/lang/String;)V

    .line 113
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-interface {p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;->onDateChanged(Ljava/util/Date;)V

    .line 115
    :cond_1
    return-void
.end method

.method public removeListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 118
    const-string v0, "DateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeListener:size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->release()V

    .line 126
    :cond_1
    return-void
.end method
