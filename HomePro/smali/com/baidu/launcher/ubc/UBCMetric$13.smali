.class final Lcom/baidu/launcher/ubc/UBCMetric$13;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->screenStatusChange(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$s:I

.field final synthetic val$screen:I


# direct methods
.method constructor <init>(IILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 376
    iput p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$13;->val$screen:I

    iput p2, p0, Lcom/baidu/launcher/ubc/UBCMetric$13;->val$s:I

    iput-object p3, p0, Lcom/baidu/launcher/ubc/UBCMetric$13;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x934

    .line 380
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 381
    .local v0, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v5, v6}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 383
    iget v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$13;->val$screen:I

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 384
    iget v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$13;->val$s:I

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 385
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$13;->val$context:Landroid/content/Context;

    invoke-static {v1, v5, v6, v0}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 386
    return-void
.end method
