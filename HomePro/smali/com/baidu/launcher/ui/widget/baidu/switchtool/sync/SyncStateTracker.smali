.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/sync/SyncStateTracker;
.super Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.source "SyncStateTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;-><init>()V

    .line 14
    const-string v0, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/sync/SyncStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 18
    if-eqz p1, :cond_0

    const v0, 0x7f020195

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020194

    goto :goto_0
.end method

.method public getTitleStringId()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f0c01ee

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/sync/SyncStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/sync/SyncStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 46
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 36
    if-eqz p2, :cond_0

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0
.end method
