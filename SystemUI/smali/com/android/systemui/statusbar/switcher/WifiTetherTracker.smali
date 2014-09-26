.class public Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "WifiTetherTracker.java"


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mState:I

.field private final mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiConnected:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWifiSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mState:I

    .line 140
    new-instance v0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mContext:Landroid/content/Context;

    .line 39
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mCm:Landroid/net/ConnectivityManager;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiRegexs:[Ljava/lang/String;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->enableWifiCheckBox()V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 192
    .local v0, isAirplaneMode:Z
    :goto_0
    if-nez v0, :cond_1

    .line 193
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    .line 197
    :goto_1
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v2

    .line 190
    goto :goto_0

    .line 195
    .restart local v0       #isAirplaneMode:Z
    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 200
    iput p1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mState:I

    .line 201
    packed-switch p1, :pswitch_data_0

    .line 217
    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiSsid:Ljava/lang/String;

    .line 218
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    .line 220
    :goto_0
    return-void

    .line 203
    :pswitch_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiSsid:Ljava/lang/String;

    .line 204
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    goto :goto_0

    .line 207
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    goto :goto_0

    .line 210
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    goto :goto_0

    .line 213
    :pswitch_3
    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiSsid:Ljava/lang/String;

    .line 214
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 13
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 163
    const/4 v11, 0x0

    .line 164
    .local v11, wifiTethered:Z
    const/4 v10, 0x0

    .line 166
    .local v10, wifiErrored:Z
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, o:Ljava/lang/Object;
    move-object v8, v6

    .line 167
    check-cast v8, Ljava/lang/String;

    .line 168
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 169
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 170
    const/4 v11, 0x1

    .line 168
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 173
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6       #o:Ljava/lang/Object;
    move-object v8, v6

    .line 174
    check-cast v8, Ljava/lang/String;

    .line 175
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 176
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 177
    const/4 v10, 0x1

    .line 175
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 173
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 181
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_8

    .line 182
    iget-object v12, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 183
    .local v9, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-nez v9, :cond_7

    const/4 v12, 0x0

    :goto_4
    iput-object v12, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiSsid:Ljava/lang/String;

    .line 187
    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_5
    return-void

    .line 183
    .restart local v9       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v12, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_4

    .line 184
    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_8
    if-eqz v10, :cond_6

    .line 185
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiSsid:Ljava/lang/String;

    goto :goto_5
.end method

.method private wifiApStateToFiveState(I)I
    .locals 2
    .parameter "wifiState"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 45
    packed-switch p1, :pswitch_data_0

    .line 55
    const/16 v0, 0x9

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 49
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 53
    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0xa
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
    .line 61
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 62
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->wifiApStateToFiveState(I)I

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 224
    const/16 v0, 0x10

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 129
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .local v0, cn:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "desiredState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 85
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    .line 86
    .local v2, wifiState:I
    if-ne p2, v3, :cond_3

    move v0, v3

    .line 87
    .local v0, enable:Z
    :goto_0
    if-eqz v0, :cond_1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    .line 89
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 90
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_saved_state"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 95
    if-nez v0, :cond_2

    .line 96
    const/4 v1, 0x0

    .line 98
    .local v1, wifiSavedState:I
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_saved_state"

    invoke-static {v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 102
    :goto_1
    if-ne v1, v3, :cond_2

    .line 103
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 104
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_saved_state"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    .end local v1           #wifiSavedState:I
    :cond_2
    return-void

    .end local v0           #enable:Z
    :cond_3
    move v0, v4

    .line 86
    goto :goto_0

    .line 99
    .restart local v0       #enable:Z
    .restart local v1       #wifiSavedState:I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mCurrentState:I

    if-ne v0, v2, :cond_1

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0200a8

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    invoke-virtual {p2, v0, v2, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiSsid:Ljava/lang/String;

    if-nez v0, :cond_3

    const v0, 0x7f0c00b6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(Ljava/lang/String;)V

    .line 81
    return-void

    .line 71
    :cond_0
    const v0, 0x7f0200a7

    goto :goto_0

    .line 75
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0200a6

    :goto_3
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mIsEnabled:Z

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0200a5

    goto :goto_3

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->mWifiSsid:Ljava/lang/String;

    goto :goto_2
.end method
