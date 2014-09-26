.class final Lcom/baidu/launcher/ubc/UBCMetric$14;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->addShortcutToDock(Landroid/content/Context;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$info:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$14;->val$info:Ljava/lang/Object;

    iput-object p2, p0, Lcom/baidu/launcher/ubc/UBCMetric$14;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x928

    .line 398
    const/4 v0, 0x0

    .line 399
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$14;->val$info:Ljava/lang/Object;

    instance-of v3, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    if-eqz v3, :cond_1

    .line 400
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$14;->val$info:Ljava/lang/Object;

    check-cast v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;

    iget-object v0, v3, Lcom/baidu/launcher/data/item/HomeShortcutInfo;->intent:Landroid/content/Intent;

    .line 406
    :goto_0
    if-nez v0, :cond_2

    .line 419
    :cond_0
    :goto_1
    return-void

    .line 401
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$14;->val$info:Ljava/lang/Object;

    instance-of v3, v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$14;->val$info:Ljava/lang/Object;

    check-cast v3, Lcom/baidu/launcher/data/item/ListAppInfo;

    iget-object v0, v3, Lcom/baidu/launcher/data/item/ListAppInfo;->intent:Landroid/content/Intent;

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_3

    .line 410
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 414
    .local v2, name:Ljava/lang/String;
    :goto_2
    new-instance v1, Lyi/ubc/MetricBuilder;

    invoke-direct {v1}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 415
    .local v1, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v1, v7, v8}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v1, v3}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 417
    invoke-virtual {v1, v2}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 418
    iget-object v3, p0, Lcom/baidu/launcher/ubc/UBCMetric$14;->val$context:Landroid/content/Context;

    invoke-static {v3, v7, v8, v1}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    goto :goto_1

    .line 412
    .end local v1           #mb:Lyi/ubc/MetricBuilder;
    .end local v2           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #name:Ljava/lang/String;
    goto :goto_2
.end method
