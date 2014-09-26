.class final Lcom/baidu/launcher/ubc/UBCMetric$1;
.super Ljava/lang/Object;
.source "UBCMetric.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ubc/UBCMetric;->submitUbc(Landroid/content/Context;JLyi/ubc/MetricBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$data:Lyi/ubc/MetricBuilder;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(JLyi/ubc/MetricBuilder;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/baidu/launcher/ubc/UBCMetric$1;->val$id:J

    iput-object p3, p0, Lcom/baidu/launcher/ubc/UBCMetric$1;->val$data:Lyi/ubc/MetricBuilder;

    iput-object p4, p0, Lcom/baidu/launcher/ubc/UBCMetric$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "yi.intent.action.UBC_SUBMITDATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v1, "METRICID"

    iget-wide v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$1;->val$id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 93
    const-string v1, "METRICDATA"

    iget-object v2, p0, Lcom/baidu/launcher/ubc/UBCMetric$1;->val$data:Lyi/ubc/MetricBuilder;

    invoke-virtual {v2}, Lyi/ubc/MetricBuilder;->buffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 94
    iget-object v1, p0, Lcom/baidu/launcher/ubc/UBCMetric$1;->val$c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    return-void
.end method
