.class public Lcom/android/systemui/statusbar/switcher/WifiTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "WifiTracker.java"


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConnected:Z

.field private mWifiSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/WifiTracker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/WifiTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/switcher/WifiTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/switcher/WifiTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/switcher/WifiTracker;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->huntForSsid(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 173
    :cond_0
    :goto_0
    return-object p1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    const-string p1, ""

    goto :goto_0
.end method

.method private huntForSsid(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .parameter "mWifiManager"
    .parameter "info"

    .prologue
    .line 150
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 161
    .end local v3           #ssid:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 155
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 157
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 158
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 161
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private wifiStateToFiveState(I)I
    .locals 2
    .parameter "wifiState"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 32
    packed-switch p1, :pswitch_data_0

    .line 42
    const/16 v0, 0x9

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 36
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 40
    goto :goto_0

    .line 32
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 48
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 50
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 53
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x9

    goto :goto_0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x9

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 141
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "desiredState"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 70
    const-string v4, "wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 72
    .local v2, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_0

    .line 73
    const-string v3, "No wifiManager."

    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 77
    .local v1, wifiApState:I
    if-ne p2, v0, :cond_3

    .line 78
    .local v0, state:Z
    :goto_1
    if-eqz v0, :cond_2

    const/16 v4, 0xc

    if-eq v1, v4, :cond_1

    const/16 v4, 0xd

    if-ne v1, v4, :cond_2

    .line 80
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 83
    :cond_2
    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    .end local v0           #state:Z
    :cond_3
    move v0, v3

    .line 77
    goto :goto_1
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 59
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mCurrentState:I

    if-ne v0, v2, :cond_0

    .line 60
    const v0, 0x7f0200ab

    invoke-virtual {p2, v0, v2, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiSsid:Ljava/lang/String;

    if-nez v0, :cond_1

    const v0, 0x7f0c00b5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(Ljava/lang/String;)V

    .line 66
    return-void

    .line 62
    :cond_0
    const v0, 0x7f0200aa

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiSsid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->getSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
