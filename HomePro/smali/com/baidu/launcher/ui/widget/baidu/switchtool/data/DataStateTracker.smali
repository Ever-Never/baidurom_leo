.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;
.super Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.source "DataStateTracker.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;-><init>()V

    .line 17
    const-string v0, "DataStateTracker"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;->TAG:Ljava/lang/String;

    .line 20
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 21
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 22
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 23
    const-string v0, "mobile_data"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;->registerObserverUri(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method

.method private static getMobileDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 99
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 101
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 38
    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;->getMobileDataState(Landroid/content/Context;)Z

    move-result v1

    .line 39
    .local v1, on:Z
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 41
    .local v0, isAirplane:I
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 43
    .local v2, tm:Landroid/telephony/TelephonyManager;
    if-eq v0, v3, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    .line 45
    if-eqz v1, :cond_0

    .line 49
    :goto_0
    return v3

    :cond_0
    move v3, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-ne v0, v3, :cond_2

    move v3, v5

    .line 47
    goto :goto_0

    :cond_2
    move v3, v5

    .line 49
    goto :goto_0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 27
    if-eqz p1, :cond_0

    const v0, 0x7f020184

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020183

    goto :goto_0
.end method

.method public getTitleStringId()I
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0c01ea

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    const-string v0, "DataStateTracker"

    const-string v1, "onActualStateChange"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 57
    return-void
.end method

.method public requestStateChange(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 62
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;->getMobileDataState(Landroid/content/Context;)Z

    move-result v1

    .line 66
    .local v1, mobileData:Z
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;ZZLandroid/net/ConnectivityManager;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 96
    return-void
.end method
