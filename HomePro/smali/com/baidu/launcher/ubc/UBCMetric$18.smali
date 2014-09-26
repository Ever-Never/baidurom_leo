.class final Lcom/baidu/launcher/ubc/UBCMetric$18;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->aboutFolder(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeFolderInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Lcom/baidu/launcher/data/item/HomeFolderInfo;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(ILcom/baidu/launcher/data/item/HomeFolderInfo;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 542
    iput p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$18;->val$type:I

    iput-object p2, p0, Lcom/baidu/launcher/ubc/UBCMetric$18;->val$info:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iput-object p3, p0, Lcom/baidu/launcher/ubc/UBCMetric$18;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x930

    .line 546
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 547
    .local v0, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v5, v6}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 549
    iget v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$18;->val$type:I

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 550
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$18;->val$info:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    invoke-virtual {v1}, Lcom/baidu/launcher/data/item/HomeFolderInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 551
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$18;->val$info:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget v1, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->screen:I

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 552
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$18;->val$info:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget v1, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellX:I

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 553
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$18;->val$info:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget v1, v1, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellY:I

    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 554
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$18;->val$context:Landroid/content/Context;

    invoke-static {v1, v5, v6, v0}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 555
    return-void
.end method
