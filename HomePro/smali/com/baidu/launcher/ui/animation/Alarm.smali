.class public Lcom/baidu/launcher/ui/animation/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;
    }
.end annotation


# instance fields
.field private mAlarmListener:Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;

.field private mAlarmPending:Z

.field private mAlarmTriggerTime:J

.field private mHandler:Landroid/os/Handler;

.field private mWaitingForCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmPending:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mHandler:Landroid/os/Handler;

    .line 39
    return-void
.end method


# virtual methods
.method public alarmPending()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmPending:Z

    return v0
.end method

.method public cancelAlarm()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmTriggerTime:J

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmPending:Z

    .line 60
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 64
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mWaitingForCallback:Z

    .line 65
    iget-wide v2, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmTriggerTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v3, v0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mWaitingForCallback:Z

    .line 79
    .end local v0           #currentTime:J
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v0       #currentTime:J
    :cond_1
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmPending:Z

    .line 74
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmListener:Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmListener:Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;

    invoke-interface {v2, p0}, Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;->onAlarm(Lcom/baidu/launcher/ui/animation/Alarm;)V

    goto :goto_0
.end method

.method public setAlarm(J)V
    .locals 6
    .parameter "millisecondsInFuture"

    .prologue
    const/4 v5, 0x1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    .local v0, currentTime:J
    iput-boolean v5, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmPending:Z

    .line 50
    add-long v2, v0, p1

    iput-wide v2, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmTriggerTime:J

    .line 51
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mWaitingForCallback:Z

    if-nez v2, :cond_0

    .line 52
    iget-object v2, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmTriggerTime:J

    sub-long/2addr v3, v0

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 53
    iput-boolean v5, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mWaitingForCallback:Z

    .line 55
    :cond_0
    return-void
.end method

.method public setOnAlarmListener(Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;)V
    .locals 0
    .parameter "alarmListener"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/Alarm;->mAlarmListener:Lcom/baidu/launcher/ui/animation/Alarm$OnAlarmListener;

    .line 43
    return-void
.end method
