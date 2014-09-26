.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
.super Ljava/lang/Object;
.source "SwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;,
        Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;
    }
.end annotation


# static fields
.field private static mAvailableSwitch:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

.field private static mIsStart:Z

.field private static mSettingChangedObserver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;

.field private static mSettingChangedReceiver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mIsStart:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mContext:Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/wifi/WifiStateTracker;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/data/DataStateTracker;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/screenrotate/ScreenRotationStateTracker;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/screenrotate/ScreenRotationStateTracker;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/airplanemode/AirplaneModeStateTracker;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/airplanemode/AirplaneModeStateTracker;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/bluetooth/BluetoothStateTracker;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/bluetooth/BluetoothStateTracker;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/gps/GpsStateTracker;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/gps/GpsStateTracker;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/sync/SyncStateTracker;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/sync/SyncStateTracker;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method static synthetic access$000()Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedReceiver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getInstance()Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
    .locals 2
    .parameter "aContext"

    .prologue
    .line 50
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    if-nez v0, :cond_0

    .line 51
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    monitor-enter v1

    .line 52
    :try_start_0
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    .line 53
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private installObserverUri(Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;)V
    .locals 2
    .parameter "aTracker"

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getInterestObserverChangedUri()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedObserver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getInterestObserverChangedUri()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;->registerObservingUri(Ljava/util/ArrayList;)V

    .line 110
    :cond_0
    return-void
.end method

.method private installReceiverAction(Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;)V
    .locals 2
    .parameter "aTracker"

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getInterestBroadcastAction()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedReceiver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;

    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getInterestBroadcastAction()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;->registerReceiverAction(Ljava/util/ArrayList;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultShortCutSwitch()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    return-object v0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 59
    sget-boolean v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mIsStart:Z

    if-eqz v2, :cond_1

    .line 76
    :cond_0
    return-void

    .line 62
    :cond_1
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedReceiver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;

    if-nez v2, :cond_2

    .line 63
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;Landroid/content/Context;)V

    sput-object v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedReceiver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;

    .line 65
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;

    .line 66
    .local v1, tracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->installReceiverAction(Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;)V

    goto :goto_0

    .line 69
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #tracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    :cond_2
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedObserver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;

    if-nez v2, :cond_0

    .line 70
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedObserver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;

    .line 72
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mAvailableSwitch:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;

    .line 73
    .restart local v1       #tracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->installObserverUri(Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;)V

    goto :goto_1
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mIsStart:Z

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedReceiver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedObserver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 85
    sput-object v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedReceiver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;

    .line 86
    sput-object v2, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mSettingChangedObserver:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsObserver;

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->mIsStart:Z

    goto :goto_0
.end method
