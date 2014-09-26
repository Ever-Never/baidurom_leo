.class final Lcom/baidu/launcher/ubc/UBCMetric$12;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->addNoAppShortcut(Landroid/content/Context;Lcom/baidu/launcher/data/item/HomeShortcutInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/data/item/HomeShortcutInfo;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$12;->val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iput-object p2, p0, Lcom/baidu/launcher/ubc/UBCMetric$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x935

    .line 353
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$12;->val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v0, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 354
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    .line 357
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, name:Ljava/lang/String;
    :goto_1
    new-instance v1, Lyi/ubc/MetricBuilder;

    invoke-direct {v1}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 362
    .local v1, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v1, v7, v8}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 364
    invoke-virtual {v1, v2}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 365
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$12;->val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v3, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->screen:I

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 366
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$12;->val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v3, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellX:I

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 367
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$12;->val$info:Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget v3, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->cellY:I

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 368
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$12;->val$context:Landroid/content/Context;

    invoke-static {v3, v7, v8, v1}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    goto :goto_0

    .line 359
    .end local v1           #mb:Lyi/ubc/MetricBuilder;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #name:Ljava/lang/String;
    goto :goto_1
.end method
