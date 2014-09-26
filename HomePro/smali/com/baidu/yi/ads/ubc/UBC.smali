.class public Lcom/baidu/yi/ads/ubc/UBC;
.super Ljava/lang/Object;
.source "UBC.java"


# static fields
.field public static final AD_CLICK_EVENT:J = 0x6a5L

.field public static final AD_SHOW_EVENT:J = 0x6a4L

.field private static UBC_NOEXIST:Z

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/4 v1, 0x0

    sput-boolean v1, Lcom/baidu/yi/ads/ubc/UBC;->UBC_NOEXIST:Z

    .line 17
    :try_start_0
    const-string v1, "yi.ubc.MetricBuilder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 18
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 19
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    const-string v1, "yi.ubc.MetricBuilder is not found >>>"

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logE(Ljava/lang/String;)V

    .line 20
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/yi/ads/ubc/UBC;->UBC_NOEXIST:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    sput-object p0, Lcom/baidu/yi/ads/ubc/UBC;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public static submitAdClickEventMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "appid"
    .parameter "adid"

    .prologue
    const-wide/16 v5, 0x6a5

    .line 54
    sget-boolean v1, Lcom/baidu/yi/ads/ubc/UBC;->UBC_NOEXIST:Z

    if-eqz v1, :cond_0

    .line 55
    const-string v1, "ubc is not exist"

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/baidu/yi/ads/ubc/MetricBuilder;

    invoke-direct {v0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;-><init>()V

    .line 59
    .local v0, mb:Lcom/baidu/yi/ads/ubc/MetricBuilder;
    invoke-virtual {v0, v5, v6}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->setMetricId(J)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 61
    invoke-virtual {v0, p0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 62
    invoke-virtual {v0, p1}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendSHORT(S)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 64
    sget-object v1, Lcom/baidu/yi/ads/ubc/UBC;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v6, v0}, Lcom/baidu/yi/ads/ubc/UBC;->submitUbc(Landroid/content/Context;JLcom/baidu/yi/ads/ubc/MetricBuilder;)V

    goto :goto_0
.end method

.method public static submitAdShowEventMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "appid"
    .parameter "adid"

    .prologue
    const-wide/16 v5, 0x6a4

    .line 40
    sget-boolean v1, Lcom/baidu/yi/ads/ubc/UBC;->UBC_NOEXIST:Z

    if-eqz v1, :cond_0

    .line 41
    const-string v1, "ubc is not exist"

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/baidu/yi/ads/ubc/MetricBuilder;

    invoke-direct {v0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;-><init>()V

    .line 45
    .local v0, mb:Lcom/baidu/yi/ads/ubc/MetricBuilder;
    invoke-virtual {v0, v5, v6}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->setMetricId(J)V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 47
    invoke-virtual {v0, p0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 48
    invoke-virtual {v0, p1}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 49
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendSHORT(S)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 50
    sget-object v1, Lcom/baidu/yi/ads/ubc/UBC;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v6, v0}, Lcom/baidu/yi/ads/ubc/UBC;->submitUbc(Landroid/content/Context;JLcom/baidu/yi/ads/ubc/MetricBuilder;)V

    goto :goto_0
.end method

.method public static submitUbc(Landroid/content/Context;JLcom/baidu/yi/ads/ubc/MetricBuilder;)V
    .locals 3
    .parameter "context"
    .parameter "id"
    .parameter "data"

    .prologue
    .line 29
    sget-boolean v1, Lcom/baidu/yi/ads/ubc/UBC;->UBC_NOEXIST:Z

    if-eqz v1, :cond_0

    .line 37
    :goto_0
    return-void

    .line 31
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    const-string v1, "METRICID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 34
    const-string v1, "METRICDATA"

    invoke-virtual {p3}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->buffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    const-string v1, "ubc message send out successfully"

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method
