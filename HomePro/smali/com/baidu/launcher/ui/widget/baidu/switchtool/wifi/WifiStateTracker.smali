.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker;
.super Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.source "WifiStateTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;-><init>()V

    .line 16
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 80
    packed-switch p0, :pswitch_data_0

    .line 90
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 82
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 88
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 33
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 36
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 20
    if-eqz p1, :cond_0

    const v0, 0x7f020197

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020196

    goto :goto_0
.end method

.method public getTitleStringId()I
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f0c01e6

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 63
    if-nez p2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 72
    .local v0, wifiState:I
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 42
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 44
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
