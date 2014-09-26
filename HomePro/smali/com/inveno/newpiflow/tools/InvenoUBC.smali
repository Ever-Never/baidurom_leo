.class public Lcom/inveno/newpiflow/tools/InvenoUBC;
.super Ljava/lang/Object;
.source "InvenoUBC.java"


# static fields
.field public static final CLICK_TYPE_ENTER:B = 0x5t

.field public static final CLICK_TYPE_ONE_DEFAULT:B = 0x0t

.field public static final CLICK_TYPE_ONE_IQIYI:B = 0x1t

.field public static final CLICK_TYPE_ONE_OP:B = 0x2t

.field public static final CLICK_TYPE_TWO_DEFAULT:B = 0x3t

.field public static final CLICK_TYPE_TWO_OP:B = 0x4t

.field private static final D:Z = false

.field private static final ID_CLICK:J = 0x70cL

.field private static final ID_ONOFF:J = 0x70bL

.field private static final ID_REFRESH:J = 0x70eL

.field private static final ID_STAY:J = 0x70dL

.field private static final PREF:Ljava/lang/String; = "com.inveno.flow.ubc"

.field private static final PREF_ENTER_TIME:Ljava/lang/String; = "com.inveno.flow.pref.enter"

.field private static final TAG:Ljava/lang/String; = "InvenoUBC"

.field private static UBC_NOEXIST:Z

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/4 v1, 0x0

    sput-boolean v1, Lcom/inveno/newpiflow/tools/InvenoUBC;->UBC_NOEXIST:Z

    .line 33
    :try_start_0
    const-string v1, "yi.ubc.MetricBuilder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 34
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 35
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    const-string v1, "InvenoUBC"

    const-string v2, "yi.ubc.MetricBuilder is not found >>>"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v1, 0x1

    sput-boolean v1, Lcom/inveno/newpiflow/tools/InvenoUBC;->UBC_NOEXIST:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private static sendToUBC(Landroid/content/Context;Lyi/ubc/MetricBuilder;)V
    .locals 4
    .parameter "context"
    .parameter "builder"

    .prologue
    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v0, i:Landroid/content/Intent;
    const-string v1, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "METRICID"

    invoke-virtual {p1}, Lyi/ubc/MetricBuilder;->getMetricId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    const-string v1, "METRICDATA"

    invoke-virtual {p1}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public static statForClickInfo(B)V
    .locals 1
    .parameter "type"

    .prologue
    .line 77
    sget-boolean v0, Lcom/inveno/newpiflow/tools/InvenoUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {p0}, Lcom/inveno/newpiflow/tools/InvenoUBC;->submitClickEventMetric(B)V

    goto :goto_0
.end method

.method public static statForEnterInveno()V
    .locals 6

    .prologue
    .line 45
    sget-boolean v3, Lcom/inveno/newpiflow/tools/InvenoUBC;->UBC_NOEXIST:Z

    if-nez v3, :cond_0

    sget-object v3, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 52
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    .local v1, enter:J
    :cond_0
    :goto_0
    return-void

    .line 48
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #enter:J
    :cond_1
    sget-object v3, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    const-string v4, "com.inveno.flow.ubc"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .restart local v0       #edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 50
    .restart local v1       #enter:J
    const-string v3, "com.inveno.flow.pref.enter"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static statForExitInveno()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    .line 63
    sget-boolean v7, Lcom/inveno/newpiflow/tools/InvenoUBC;->UBC_NOEXIST:Z

    if-nez v7, :cond_0

    sget-object v7, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    if-nez v7, :cond_1

    .line 74
    .local v0, enter:J
    .local v2, exit:J
    .local v4, pref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 66
    .end local v0           #enter:J
    .end local v2           #exit:J
    .end local v4           #pref:Landroid/content/SharedPreferences;
    :cond_1
    sget-object v7, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    const-string v8, "com.inveno.flow.ubc"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 67
    .restart local v4       #pref:Landroid/content/SharedPreferences;
    const-string v7, "com.inveno.flow.pref.enter"

    invoke-interface {v4, v7, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 68
    .restart local v0       #enter:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 69
    .restart local v2       #exit:J
    cmp-long v7, v10, v0

    if-eqz v7, :cond_0

    cmp-long v7, v2, v0

    if-lez v7, :cond_0

    .line 70
    sub-long v5, v2, v0

    .line 71
    .local v5, stay:J
    invoke-static {v5, v6}, Lcom/inveno/newpiflow/tools/InvenoUBC;->submitStayEventMetric(J)V

    goto :goto_0
.end method

.method public static statForOnOffInveno(I)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 55
    sget-boolean v0, Lcom/inveno/newpiflow/tools/InvenoUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/newpiflow/tools/InvenoUBC;->submitOnOffEventMetric(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static statForRefreshInfo()V
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/inveno/newpiflow/tools/InvenoUBC;->UBC_NOEXIST:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-static {}, Lcom/inveno/newpiflow/tools/InvenoUBC;->submitRefreshEventMetric()V

    goto :goto_0
.end method

.method private static submitClickEventMetric(B)V
    .locals 10
    .parameter "event"

    .prologue
    .line 101
    const-wide/16 v1, 0x70c

    .line 102
    .local v1, metricId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v3, v6

    .line 103
    .local v3, time:I
    const/4 v5, 0x1

    .line 104
    .local v5, count:S
    new-instance v0, Lyi/ubc/MetricBuilder;

    move v4, p0

    invoke-direct/range {v0 .. v5}, Lyi/ubc/MetricBuilder;-><init>(JIBS)V

    .line 105
    .local v0, mb:Lyi/ubc/MetricBuilder;
    sget-object v4, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/inveno/newpiflow/tools/InvenoUBC;->sendToUBC(Landroid/content/Context;Lyi/ubc/MetricBuilder;)V

    .line 106
    return-void
.end method

.method private static submitOnOffEventMetric(Ljava/lang/String;)V
    .locals 11
    .parameter "onOff"

    .prologue
    .line 116
    const-wide/16 v1, 0x70b

    .line 117
    .local v1, metricId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v3, v7

    .line 118
    .local v3, time:I
    const-string v4, "com.inveno.newpiflow_onoff"

    .line 119
    .local v4, target:Ljava/lang/String;
    move-object v5, p0

    .line 120
    .local v5, status:Ljava/lang/String;
    const/4 v6, 0x1

    .line 121
    .local v6, count:S
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct/range {v0 .. v6}, Lyi/ubc/MetricBuilder;-><init>(JILjava/lang/String;Ljava/lang/String;S)V

    .line 122
    .local v0, mb:Lyi/ubc/MetricBuilder;
    sget-object v7, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/inveno/newpiflow/tools/InvenoUBC;->sendToUBC(Landroid/content/Context;Lyi/ubc/MetricBuilder;)V

    .line 123
    return-void
.end method

.method private static submitRefreshEventMetric()V
    .locals 10

    .prologue
    .line 93
    const-wide/16 v1, 0x70e

    .line 94
    .local v1, metricId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v3, v6

    .line 95
    .local v3, time:I
    const/4 v4, 0x0

    .line 96
    .local v4, status:B
    const/4 v5, 0x1

    .line 97
    .local v5, count:S
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct/range {v0 .. v5}, Lyi/ubc/MetricBuilder;-><init>(JIBS)V

    .line 98
    .local v0, mb:Lyi/ubc/MetricBuilder;
    sget-object v6, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/inveno/newpiflow/tools/InvenoUBC;->sendToUBC(Landroid/content/Context;Lyi/ubc/MetricBuilder;)V

    .line 99
    return-void
.end method

.method private static submitStayEventMetric(J)V
    .locals 10
    .parameter "stay"

    .prologue
    const-wide/16 v8, 0x3e8

    .line 108
    const-wide/16 v1, 0x70d

    .line 109
    .local v1, metricId:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v8

    long-to-int v3, v6

    .line 110
    .local v3, time:I
    const/4 v4, 0x0

    .line 111
    .local v4, status:B
    div-long v6, p0, v8

    const-wide/32 v8, 0xffff

    rem-long/2addr v6, v8

    long-to-int v6, v6

    int-to-short v5, v6

    .line 112
    .local v5, stayTime:S
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct/range {v0 .. v5}, Lyi/ubc/MetricBuilder;-><init>(JIBS)V

    .line 113
    .local v0, mb:Lyi/ubc/MetricBuilder;
    sget-object v6, Lcom/inveno/newpiflow/tools/InvenoUBC;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/inveno/newpiflow/tools/InvenoUBC;->sendToUBC(Landroid/content/Context;Lyi/ubc/MetricBuilder;)V

    .line 114
    return-void
.end method
