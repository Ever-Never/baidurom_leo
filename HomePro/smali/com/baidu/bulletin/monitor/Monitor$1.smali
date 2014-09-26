.class final Lcom/baidu/bulletin/monitor/Monitor$1;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/monitor/Monitor;->showMonitorView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/baidu/bulletin/monitor/Monitor$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 72
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/baidu/bulletin/monitor/Monitor;->setIsShown(Z)V

    .line 74
    iget-object v1, p0, Lcom/baidu/bulletin/monitor/Monitor$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bulletin/monitor/Monitor;->hideMonitorView(Landroid/content/Context;)V

    .line 75
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/bulletin/ui/logic/UIController;->isBulletin:Z

    .line 78
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForMonitorClick()V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.bulletin.monitor.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/bulletin/monitor/Monitor$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
