.class final Lcom/baidu/launcher/ubc/UBCMetric$2;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->submitStatusChange(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$statusId:J


# direct methods
.method constructor <init>(JLandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$2;->val$statusId:J

    iput-object p3, p0, Lcom/baidu/launcher/ubc/UBCMetric$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 106
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 107
    .local v0, mb:Lyi/ubc/MetricBuilder;
    iget-wide v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$2;->val$statusId:J

    invoke-virtual {v0, v1, v2}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 109
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$2;->val$c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$2;->val$statusId:J

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 110
    return-void
.end method
