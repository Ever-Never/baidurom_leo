.class Lcom/baidu/launcher/business/BusinessSyncManager$1;
.super Ljava/lang/Object;
.source "BusinessSyncManager.java"

# interfaces
.implements Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/business/BusinessSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/business/BusinessSyncManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/business/BusinessSyncManager;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/baidu/launcher/business/BusinessSyncManager$1;->this$0:Lcom/baidu/launcher/business/BusinessSyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncFailed()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessSyncManager$1;->this$0:Lcom/baidu/launcher/business/BusinessSyncManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->startNextSyncAlarm()V

    .line 44
    return-void
.end method

.method public onSyncNoUpdate()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessSyncManager$1;->this$0:Lcom/baidu/launcher/business/BusinessSyncManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->startNextSyncAlarm()V

    .line 49
    iget-object v0, p0, Lcom/baidu/launcher/business/BusinessSyncManager$1;->this$0:Lcom/baidu/launcher/business/BusinessSyncManager;

    #getter for: Lcom/baidu/launcher/business/BusinessSyncManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->access$100(Lcom/baidu/launcher/business/BusinessSyncManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->PREFERENCE_STRATEGY_SYNC_TIMIE:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/business/BusinessShardPreferenceUtil;->setLong(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 52
    return-void
.end method

.method public onSyncSucceed(Ljava/lang/Object;)V
    .locals 5
    .parameter "aObject"

    .prologue
    .line 32
    instance-of v1, p1, Lcom/baidu/launcher/business/item/RecommendResponceInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 33
    check-cast v0, Lcom/baidu/launcher/business/item/RecommendResponceInfo;

    .line 34
    .local v0, info:Lcom/baidu/launcher/business/item/RecommendResponceInfo;
    invoke-static {}, Lcom/baidu/launcher/business/BusinessSyncManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSyncSucceed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getTimer()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/baidu/launcher/business/BusinessSyncManager$1;->this$0:Lcom/baidu/launcher/business/BusinessSyncManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/business/item/RecommendResponceInfo;->getTimer()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/business/BusinessSyncManager;->saveSyncInterval(J)V

    .line 36
    iget-object v1, p0, Lcom/baidu/launcher/business/BusinessSyncManager$1;->this$0:Lcom/baidu/launcher/business/BusinessSyncManager;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/business/BusinessSyncManager;->saveResponceInfo(Lcom/baidu/launcher/business/item/RecommendResponceInfo;)V

    .line 37
    iget-object v1, p0, Lcom/baidu/launcher/business/BusinessSyncManager$1;->this$0:Lcom/baidu/launcher/business/BusinessSyncManager;

    invoke-virtual {v1}, Lcom/baidu/launcher/business/BusinessSyncManager;->startNextSyncAlarm()V

    .line 39
    .end local v0           #info:Lcom/baidu/launcher/business/item/RecommendResponceInfo;
    :cond_0
    return-void
.end method
