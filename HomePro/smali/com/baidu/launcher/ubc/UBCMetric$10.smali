.class final Lcom/baidu/launcher/ubc/UBCMetric$10;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->addWidgetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clzName:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$id:J

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$screen:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;IIILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    iput-wide p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$id:J

    iput-object p3, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$clzName:Ljava/lang/String;

    iput p5, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$screen:I

    iput p6, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$x:I

    iput p7, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$y:I

    iput-object p8, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 311
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 312
    .local v0, mb:Lyi/ubc/MetricBuilder;
    iget-wide v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$id:J

    invoke-virtual {v0, v1, v2}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 314
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 315
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$clzName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 316
    iget v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$screen:I

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 317
    iget v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$x:I

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 318
    iget v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$y:I

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 319
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$10;->val$id:J

    invoke-static {v1, v2, v3, v0}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 320
    return-void
.end method
