.class public Lcom/android/systemui/statusbar/switcher/SavePowerTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "SavePowerTracker.java"


# static fields
.field private static final ACTION_APPLY_NORMAL_MODE:Ljava/lang/String; = "com.baidu.smartpm.ACTION_APPLY_NORMAL_MODE"

.field private static final ACTION_APPLY_SUPER_MODE:Ljava/lang/String; = "com.baidu.smartpm.ACTION_APPLY_SUPER_MODE"

.field private static final NORMAL_MODE_ID:I = 0x0

.field private static final SUPER_MODE_ID:I = 0x1


# instance fields
.field private mPowerModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/service/power/IPowerMode;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/baidu/service/power/ISmartPowerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/SavePowerTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/SavePowerTracker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->getSavePowerStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mCurrentState:I

    .line 33
    return-void
.end method

.method private getSavePowerStatus(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->isSuperModeChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuperModeChecked()Z
    .locals 8

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 103
    .local v2, isSuperModeChecked:Z
    const-string v6, "SmartPowerService"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 104
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/baidu/service/power/ISmartPowerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/service/power/ISmartPowerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mService:Lcom/baidu/service/power/ISmartPowerService;

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v4, modes:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mService:Lcom/baidu/service/power/ISmartPowerService;

    invoke-interface {v6, v4}, Lcom/baidu/service/power/ISmartPowerService;->getPowerModeList(Ljava/util/List;)I

    move-result v5

    .line 108
    .local v5, size:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mPowerModes:Ljava/util/List;

    .line 109
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 110
    .local v3, mode:Landroid/os/IBinder;
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mPowerModes:Ljava/util/List;

    invoke-static {v3}, Lcom/baidu/service/power/IPowerMode$Stub;->asInterface(Landroid/os/IBinder;)Lcom/baidu/service/power/IPowerMode;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mode:Landroid/os/IBinder;
    .end local v5           #size:I
    :catch_0
    move-exception v6

    .line 123
    :cond_0
    return v2

    .line 112
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #size:I
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mPowerModes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/service/power/IPowerMode;

    .line 113
    .local v3, mode:Lcom/baidu/service/power/IPowerMode;
    invoke-interface {v3}, Lcom/baidu/service/power/IPowerMode;->getId()I

    move-result v6

    if-eqz v6, :cond_2

    .line 114
    invoke-interface {v3}, Lcom/baidu/service/power/IPowerMode;->isActive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_3

    .line 115
    const/4 v2, 0x1

    goto :goto_1

    .line 117
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private openSuperMode(Z)V
    .locals 2
    .parameter "openSuperMode"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mService:Lcom/baidu/service/power/ISmartPowerService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/baidu/service/power/ISmartPowerService;->applyMode(I)V

    .line 134
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mService:Lcom/baidu/service/power/ISmartPowerService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/baidu/service/power/ISmartPowerService;->applyMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->getSavePowerStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mCurrentState:I

    .line 48
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mCurrentState:I

    return v0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x12

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.smartpm.ACTION_APPLY_NORMAL_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "com.baidu.smartpm.ACTION_APPLY_SUPER_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 87
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$PowerMainActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v0, cpn:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 91
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v0           #cpn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected setState(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "desiredState"

    .prologue
    const/4 v0, 0x1

    .line 53
    if-ne p2, v0, :cond_0

    .line 54
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->openSuperMode(Z)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->openSuperMode(Z)V

    goto :goto_0
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 2
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 37
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->mCurrentState:I

    if-ne v0, v1, :cond_0

    .line 38
    const v0, 0x7f02009e

    invoke-virtual {p2, v0, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 42
    :goto_0
    const v0, 0x7f0c00c5

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 43
    return-void

    .line 40
    :cond_0
    const v0, 0x7f02009d

    invoke-virtual {p2, v0, v1, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0
.end method
