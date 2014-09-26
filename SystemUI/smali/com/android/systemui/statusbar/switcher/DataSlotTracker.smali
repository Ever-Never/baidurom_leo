.class public Lcom/android/systemui/statusbar/switcher/DataSlotTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "DataSlotTracker.java"


# static fields
.field public static final MSG_DATA_DEFAULT_SIM_CHANGED_DONE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/DataSlotTracker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker$2;-><init>(Lcom/android/systemui/statusbar/switcher/DataSlotTracker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/DataSlotTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getTitle(I)Ljava/lang/String;
    .locals 2
    .parameter "preDataSlot"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasNoSim(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 152
    invoke-static {p1}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 153
    .local v0, sil:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDualSimActive(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 157
    invoke-static {p1}, Landroid/telephony/BaiduTelephonyUtils$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 158
    .local v4, sil:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/BaiduTelephonyUtils$SIMInfo;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 159
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 161
    .local v1, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 163
    .local v2, isAirplane:I
    const/4 v3, 0x0

    .line 164
    .local v3, isSimReady:Z
    invoke-static {}, Landroid/telephony/BaiduTelephonyManager;->getDefault()Landroid/telephony/BaiduTelephonyManager;

    move-result-object v0

    .line 165
    .local v0, btm:Landroid/telephony/BaiduTelephonyManager;
    invoke-virtual {v0, v6}, Landroid/telephony/BaiduTelephonyManager;->getSimState(I)I

    move-result v7

    if-ne v7, v9, :cond_0

    invoke-virtual {v0, v5}, Landroid/telephony/BaiduTelephonyManager;->getSimState(I)I

    move-result v7

    if-ne v7, v9, :cond_0

    move v3, v5

    .line 167
    :goto_0
    if-eq v2, v5, :cond_1

    if-eqz v3, :cond_1

    .line 171
    .end local v0           #btm:Landroid/telephony/BaiduTelephonyManager;
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #isAirplane:I
    .end local v3           #isSimReady:Z
    :goto_1
    return v5

    .restart local v0       #btm:Landroid/telephony/BaiduTelephonyManager;
    .restart local v1       #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #isAirplane:I
    .restart local v3       #isSimReady:Z
    :cond_0
    move v3, v6

    .line 165
    goto :goto_0

    .end local v0           #btm:Landroid/telephony/BaiduTelephonyManager;
    .end local v1           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #isAirplane:I
    .end local v3           #isSimReady:Z
    :cond_1
    move v5, v6

    .line 171
    goto :goto_1
.end method

.method private togglePreferredDataSlot()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/BaiduTelephonyUtils;->getPreferredDataSlot(Landroid/content/Context;)I

    move-result v2

    .line 130
    .local v2, preDataSlot:I
    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 132
    .local v0, anotherSlot:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v3, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 133
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/BaiduSubManager;->getInstance(Landroid/content/Context;)Landroid/telephony/BaiduSubManager;

    move-result-object v4

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v1}, Landroid/telephony/BaiduSubManager;->setDataSubscription(ILandroid/os/Message;)V

    .line 135
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 136
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 137
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x190

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 138
    return-void

    .end local v0           #anotherSlot:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    move v0, v3

    .line 130
    goto :goto_0
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->isDualSimActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mIsEnabled:Z

    .line 54
    :goto_0
    return v1

    .line 52
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mIsEnabled:Z

    goto :goto_0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0x14

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 114
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.dualcardsetting.baidu_dual_card_setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 84
    return-void
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->togglePreferredDataSlot()V

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    int-to-byte v0, v1

    .line 125
    .local v0, state:B
    invoke-static {p1}, Lcom/android/systemui/UBCManager;->getDefault(Landroid/content/Context;)Lcom/android/systemui/UBCManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->getSwitcherId()B

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/UBCManager;->submitSwitcherClick(BB)V

    .line 126
    return-void
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 5
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " BrightnessTracker updateView.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->hasNoSim(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const v1, 0x7f020080

    invoke-virtual {p2, v1, v3, v4}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 62
    const v1, 0x7f0c00c7

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 80
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {p1}, Landroid/telephony/BaiduTelephonyUtils;->getPreferredDataSlot(Landroid/content/Context;)I

    move-result v0

    .line 65
    .local v0, preDataSlot:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->mIsEnabled:Z

    if-eqz v1, :cond_2

    .line 66
    if-nez v0, :cond_1

    .line 67
    const v1, 0x7f020082

    invoke-virtual {p2, v1, v3, v3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 78
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/switcher/DataSlotTracker;->getTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    const v1, 0x7f020084

    invoke-virtual {p2, v1, v3, v3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_1

    .line 72
    :cond_2
    if-nez v0, :cond_3

    .line 73
    const v1, 0x7f020081

    invoke-virtual {p2, v1, v3, v4}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_1

    .line 75
    :cond_3
    const v1, 0x7f020083

    invoke-virtual {p2, v1, v4, v4}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_1
.end method
