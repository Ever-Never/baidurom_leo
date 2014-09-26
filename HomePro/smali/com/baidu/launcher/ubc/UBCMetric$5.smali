.class final Lcom/baidu/launcher/ubc/UBCMetric$5;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->deleteShortcut(Landroid/content/Context;Landroid/content/Intent;IIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fscreen:I

.field final synthetic val$fx:I

.field final synthetic val$fy:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$screen:I

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Landroid/content/Intent;IIIIIILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$intent:Landroid/content/Intent;

    iput p2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$screen:I

    iput p3, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$x:I

    iput p4, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$y:I

    iput p5, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$fscreen:I

    iput p6, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$fx:I

    iput p7, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$fy:I

    iput-object p8, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x917

    .line 181
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, name:Ljava/lang/String;
    :goto_0
    new-instance v0, Lyi/ubc/MetricBuilder;

    invoke-direct {v0}, Lyi/ubc/MetricBuilder;-><init>()V

    .line 187
    .local v0, mb:Lyi/ubc/MetricBuilder;
    invoke-virtual {v0, v6, v7}, Lyi/ubc/MetricBuilder;->setMetricId(J)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 189
    invoke-virtual {v0, v1}, Lyi/ubc/MetricBuilder;->appendStringZ(Ljava/lang/String;)Lyi/ubc/MetricBuilder;

    .line 190
    iget v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$screen:I

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 191
    iget v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$x:I

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 192
    iget v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$y:I

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 193
    iget v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$fscreen:I

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 194
    iget v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$fx:I

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 195
    iget v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$fy:I

    invoke-virtual {v0, v2}, Lyi/ubc/MetricBuilder;->appendINT(I)Lyi/ubc/MetricBuilder;

    .line 196
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$context:Landroid/content/Context;

    invoke-static {v2, v6, v7, v0}, Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V

    .line 197
    return-void

    .line 184
    .end local v0           #mb:Lyi/ubc/MetricBuilder;
    .end local v1           #name:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$5;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_0
.end method
