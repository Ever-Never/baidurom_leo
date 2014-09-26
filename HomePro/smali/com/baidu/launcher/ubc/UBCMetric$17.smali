.class final Lcom/baidu/launcher/ubc/UBCMetric$17;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->moveShortcut(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeFolderInfo;Lcom/baidu/launcher/data/item/HomeShortcutInfo;[I[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$finfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;

.field final synthetic val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

.field final synthetic val$newScreen:I

.field final synthetic val$orgXY:[I

.field final synthetic val$targetXY:[I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/item/HomeShortcutInfo;[ILcom/baidu/launcher/data/item/HomeFolderInfo;I[ILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iput-object p2, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$orgXY:[I

    iput-object p3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$finfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iput p4, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$newScreen:I

    iput-object p5, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$targetXY:[I

    iput-object p6, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x927

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 496
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v0, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 497
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    .line 501
    invoke-virtual {v0, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, name:Ljava/lang/String;
    :goto_1
    new-instance v1, Lyi/ubc/MetricBuilder;

    invoke-direct {v1}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 506
    .local v1, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v1, v10, v11}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 508
    invoke-virtual {v1, v2}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 509
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v3, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 510
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$orgXY:[I

    if-nez v3, :cond_2

    .line 511
    invoke-virtual {v1, v7}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 512
    invoke-virtual {v1, v7}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 517
    :goto_2
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$finfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    if-nez v3, :cond_3

    .line 518
    invoke-virtual {v1, v7}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 519
    invoke-virtual {v1, v7}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 520
    invoke-virtual {v1, v7}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 527
    :goto_3
    iget v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$newScreen:I

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 528
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$targetXY:[I

    aget v3, v3, v8

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 529
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$targetXY:[I

    aget v3, v3, v9

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 530
    invoke-virtual {v1, v7}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 531
    invoke-virtual {v1, v7}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 532
    invoke-virtual {v1, v7}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 533
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$context:Landroid/content/Context;

    invoke-static {v3, v10, v11, v1}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    goto :goto_0

    .line 503
    .end local v1           #mb:Lyi/ubc/MetricBuilder;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #name:Ljava/lang/String;
    goto :goto_1

    .line 514
    .restart local v1       #mb:Lyi/ubc/MetricBuilder;
    :cond_2
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$orgXY:[I

    aget v3, v3, v8

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 515
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$orgXY:[I

    aget v3, v3, v9

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    goto :goto_2

    .line 522
    :cond_3
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$finfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget v3, v3, Lcom/baidu/launcher/data/item/HomeFolderInfo;->screen:I

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 523
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$finfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget v3, v3, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellX:I

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 524
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$17;->val$finfo:Lcom/baidu/launcher/data/item/HomeFolderInfo;

    iget v3, v3, Lcom/baidu/launcher/data/item/HomeFolderInfo;->cellY:I

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    goto :goto_3
.end method
