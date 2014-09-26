.class public Lcom/android/systemui/UBCManager;
.super Ljava/lang/Object;
.source "UBCManager.java"


# static fields
.field public static final KEY_STATUSBAR_CLICK_COUNT:J = 0x801L

.field public static final KEY_STATUSBAR_DATA_STATE:J = 0x1005L

.field public static final KEY_STATUSBAR_DATA_SWITCH:J = 0x1004L

.field public static final KEY_STATUSBAR_PULLDOWN_COUNT:J = 0x802L

.field public static final KEY_STATUSBAR_SWITHER_CLICK:J = 0x516L

.field public static final KEY_STATUSBAR_SWITHER_PKG_COUNT:J = 0x803L

.field private static final TAG:Ljava/lang/String; = "UBCManager"

.field private static sManager:Lcom/android/systemui/UBCManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/UBCManager;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/android/systemui/UBCManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    sget-object v0, Lcom/android/systemui/UBCManager;->sManager:Lcom/android/systemui/UBCManager;

    if-nez v0, :cond_1

    .line 45
    const-class v1, Lcom/android/systemui/UBCManager;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/android/systemui/UBCManager;->sManager:Lcom/android/systemui/UBCManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/systemui/UBCManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/UBCManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/UBCManager;->sManager:Lcom/android/systemui/UBCManager;

    .line 49
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/android/systemui/UBCManager;->sManager:Lcom/android/systemui/UBCManager;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public submitClicked(I)V
    .locals 2
    .parameter "increment"

    .prologue
    .line 73
    const-wide/16 v0, 0x801

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/UBCManager;->submitData(JI)V

    .line 74
    return-void
.end method

.method public submitData(JI)V
    .locals 6
    .parameter "metricId"
    .parameter "count"

    .prologue
    .line 60
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 61
    .local v0, builder:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, p1, p2}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 63
    invoke-virtual {v0, p3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yi.intent.action.UBC_SUBMITDATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "METRICID"

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    const-string v2, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 69
    iget-object v2, p0, Lcom/android/systemui/UBCManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method public submitDataState(I)V
    .locals 2
    .parameter "datastate"

    .prologue
    .line 98
    const-wide/16 v0, 0x1005

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/UBCManager;->submitData(JI)V

    .line 99
    return-void
.end method

.method public submitDataSwitch(I)V
    .locals 2
    .parameter "dataswitch"

    .prologue
    .line 94
    const-wide/16 v0, 0x1004

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/UBCManager;->submitData(JI)V

    .line 95
    return-void
.end method

.method public submitPullDown(I)V
    .locals 2
    .parameter "increment"

    .prologue
    .line 77
    const-wide/16 v0, 0x802

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/UBCManager;->submitData(JI)V

    .line 78
    return-void
.end method

.method public submitSwitcherClick(BB)V
    .locals 8
    .parameter "switcherId"
    .parameter "status"

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    long-to-int v3, v1

    .line 104
    .local v3, time:I
    const/4 v6, 0x1

    .line 105
    .local v6, count:S
    new-instance v0, Lyi/ubc/MetricBuilder;

    const-wide/16 v1, 0x516

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lyi/ubc/MetricBuilder;-><init>(JIBBS)V

    .line 106
    .local v0, builder:Lyi/ubc/MetricBuilder;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "yi.intent.action.UBC_SUBMITDATA"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "METRICID"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v4

    invoke-virtual {v7, v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    const-string v1, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/android/systemui/UBCManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public submitSwitcherPkg(Ljava/lang/String;)V
    .locals 8
    .parameter "pkg"

    .prologue
    const-wide/16 v6, 0x803

    .line 81
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 82
    .local v0, builder:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v6, v7}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 84
    invoke-virtual {v0, p1}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-string v2, "yi.intent.action.UBC_SUBMITDATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "METRICID"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 88
    const-string v2, "METRICDATA"

    invoke-virtual {v0}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 89
    iget-object v2, p0, Lcom/android/systemui/UBCManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    return-void
.end method
