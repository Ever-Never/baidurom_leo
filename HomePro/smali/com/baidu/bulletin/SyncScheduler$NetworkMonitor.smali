.class public Lcom/baidu/bulletin/SyncScheduler$NetworkMonitor;
.super Landroid/content/BroadcastReceiver;
.source "SyncScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkMonitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 210
    invoke-static {}, Lcom/baidu/bulletin/autosync/AutoSyncer;->getInstance()Lcom/baidu/bulletin/autosync/AutoSyncer;

    move-result-object v0

    .line 213
    .local v0, autoSyncer:Lcom/baidu/bulletin/autosync/AutoSyncer;
    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkMonitor start sync, cutime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lastTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/bulletin/autosync/AutoSyncer;->getLastSyncerTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/baidu/bulletin/autosync/AutoSyncer;->getLastSyncerTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 219
    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "real Monitor start"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Lcom/baidu/bulletin/autosync/AutoSyncer;->sync()V

    .line 223
    :cond_0
    return-void
.end method
