.class final Lcom/baidu/launcher/ubc/UBCMetric$4;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->deleteShortcutFromDock(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$4;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/baidu/launcher/ubc/UBCMetric$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x929

    .line 157
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$4;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, name:Ljava/lang/String;
    :goto_0
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 163
    .local v0, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v6, v7}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 165
    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 166
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$4;->val$context:Landroid/content/Context;

    invoke-static {v2, v6, v7, v0}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 167
    return-void

    .line 160
    .end local v0           #mb:Lyi/ubc/MetricBuilder;
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0
.end method