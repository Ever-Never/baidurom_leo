.class public Lcom/android/systemui/statusbar/switcher/DataTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "DataTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;
    }
.end annotation


# static fields
.field private static sDataSwitch:I


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private sSettingsObserver:Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/switcher/DataTracker;->sDataSwitch:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Lcom/android/systemui/statusbar/switcher/DataTracker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/DataTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/DataTracker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 34
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcom/android/systemui/statusbar/switcher/DataTracker;->sDataSwitch:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    sput p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->sDataSwitch:I

    return p0
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 38
    const-string v6, "connectivity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 40
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 42
    .local v1, isAirplane:I
    const/4 v2, 0x0

    .line 48
    .local v2, isSimReady:Z
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 50
    .local v3, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_0

    move v2, v4

    .line 52
    :goto_0
    if-eq v1, v4, :cond_1

    if-eqz v2, :cond_1

    .line 53
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mIsEnabled:Z

    .line 57
    :goto_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    return v4

    :cond_0
    move v2, v5

    .line 50
    goto :goto_0

    .line 55
    :cond_1
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mIsEnabled:Z

    goto :goto_1

    :cond_2
    move v4, v5

    .line 57
    goto :goto_2
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x4

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/switcher/DataTracker;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/switcher/DataTracker;->sDataSwitch:I

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;->startObserving()V

    .line 107
    :cond_0
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;->stopObserving()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/DataTracker$SettingsObserver;

    .line 118
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 168
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 171
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    const/4 v2, 0x1

    .line 82
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 84
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-ne p2, v2, :cond_0

    .line 85
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 4
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mCurrentState:I

    if-ne v0, v2, :cond_1

    .line 64
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 65
    const v0, 0x7f02007e

    invoke-virtual {p2, v0, v2, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 77
    :goto_0
    const v0, 0x7f0c00b0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 78
    return-void

    .line 67
    :cond_0
    const v0, 0x7f02007f

    invoke-virtual {p2, v0, v2, v3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 71
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/DataTracker;->mIsEnabled:Z

    if-eqz v0, :cond_2

    .line 72
    const v0, 0x7f02007c

    invoke-virtual {p2, v0, v2, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 74
    :cond_2
    const v0, 0x7f02007d

    invoke-virtual {p2, v0, v2, v3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0
.end method
