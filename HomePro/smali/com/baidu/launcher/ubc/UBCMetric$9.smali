.class final Lcom/baidu/launcher/ubc/UBCMetric$9;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->changeLauncherSortType(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sortType:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 287
    iput p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$9;->val$sortType:I

    iput-object p2, p0, Lcom/baidu/launcher/ubc/UBCMetric$9;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x922

    const/4 v1, 0x1

    .line 290
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 291
    .local v0, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v6, v7}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 293
    iget v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$9;->val$sortType:I

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 294
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$9;->val$context:Landroid/content/Context;

    invoke-static {v1, v6, v7, v0}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 295
    return-void

    .line 293
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
