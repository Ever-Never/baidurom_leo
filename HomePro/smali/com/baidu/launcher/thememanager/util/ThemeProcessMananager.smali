.class public Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;
.super Ljava/lang/Object;
.source "ThemeProcessMananager.java"


# static fields
.field public static DELAY_TIME:Ljava/lang/Long;

.field public static PERIOD_TIME:Ljava/lang/Long;

.field public static TAG:Ljava/lang/String;

.field public static final activityTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public static final lock:Ljava/lang/Object;

.field private static mCtx:Landroid/content/Context;

.field private static processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

.field public static timer:Ljava/util/Timer;

.field public static timerback:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x4e20

    const/4 v1, 0x0

    .line 20
    const-string v0, "killprocess"

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->TAG:Ljava/lang/String;

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->DELAY_TIME:Ljava/lang/Long;

    .line 23
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->PERIOD_TIME:Ljava/lang/Long;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->activityTasks:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->lock:Ljava/lang/Object;

    .line 26
    sput-object v1, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timer:Ljava/util/Timer;

    .line 27
    sput-object v1, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timerback:Ljava/util/Timer;

    .line 28
    sput-object v1, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    .line 29
    sput-object v1, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->mCtx:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessMananager(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;
    .locals 1
    .parameter "ctx"

    .prologue
    .line 33
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->mCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 34
    sput-object p0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->mCtx:Landroid/content/Context;

    .line 37
    :cond_0
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    if-nez v0, :cond_1

    .line 38
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    .line 41
    :cond_1
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    return-object v0
.end method


# virtual methods
.method public KillProcess()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->checkDownloadTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->cancelBackGroundTimer()V

    .line 90
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->cancelTimer()V

    .line 92
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->killService()V

    .line 93
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public addActivityTask(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 49
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->activityTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->cancelTimer()V

    .line 53
    :cond_0
    return-void
.end method

.method public cancelBackGroundTimer()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timerback:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timerback:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timerback:Ljava/util/Timer;

    .line 117
    :cond_0
    return-void
.end method

.method public cancelTimer()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timer:Ljava/util/Timer;

    .line 73
    :cond_0
    return-void
.end method

.method public checkDownloadTask()Z
    .locals 2

    .prologue
    .line 141
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->mCtx:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getUnfinishedDownloadIdList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 142
    .local v0, waitDownloadTasks:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    const/4 v1, 0x1

    .line 145
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public killBackGroundProcess()V
    .locals 3

    .prologue
    .line 121
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->mCtx:Landroid/content/Context;

    const-string v2, "com.baidu.launcher.theme"

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Utils;->getCurrentProcessFromName(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    .line 123
    .local v0, appProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->checkDownloadTask()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->cancelTimer()V

    .line 128
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->cancelBackGroundTimer()V

    .line 129
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->killService()V

    .line 130
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public killService()V
    .locals 3

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/baidu/launcher/thememanager/service/FetchThemeDataService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 152
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 153
    return-void
.end method

.method public removeActivityTask(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 57
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->activityTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->activityTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->startTimer()V

    .line 63
    :cond_0
    return-void
.end method

.method public startBackGroundTimer()V
    .locals 6

    .prologue
    .line 100
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timerback:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->cancelBackGroundTimer()V

    .line 104
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timerback:Ljava/util/Timer;

    .line 105
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timerback:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;

    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;-><init>(Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;I)V

    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->DELAY_TIME:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->PERIOD_TIME:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 107
    return-void
.end method

.method public startTimer()V
    .locals 6

    .prologue
    .line 77
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timer:Ljava/util/Timer;

    .line 80
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;

    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->processMananager:Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/baidu/launcher/thememanager/util/KillThemeTimerTask;-><init>(Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;I)V

    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->DELAY_TIME:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v4, Lcom/baidu/launcher/thememanager/util/ThemeProcessMananager;->PERIOD_TIME:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 83
    :cond_0
    return-void
.end method
