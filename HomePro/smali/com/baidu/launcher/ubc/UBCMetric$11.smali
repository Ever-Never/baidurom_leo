.class final Lcom/baidu/launcher/ubc/UBCMetric$11;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->removeWidget(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$i:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$11;->val$i:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    iput-object p2, p0, Lcom/baidu/launcher/ubc/UBCMetric$11;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x933

    .line 331
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$11;->val$i:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    iget-object v2, v2, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 332
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v1, Lyi/ubc/MetricBuilder;

    invoke-direct {v1}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 333
    .local v1, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v1, v6, v7}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 335
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 336
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 337
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$11;->val$i:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    iget v2, v2, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->screen:I

    invoke-virtual {v1, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 338
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$11;->val$i:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    iget v2, v2, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->cellX:I

    invoke-virtual {v1, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 339
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$11;->val$i:Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;

    iget v2, v2, Lcom/baidu/launcher/data/item/HomeAppWidgetInfo;->cellY:I

    invoke-virtual {v1, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 340
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$11;->val$context:Landroid/content/Context;

    invoke-static {v2, v6, v7, v1}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 341
    return-void
.end method
