.class public Lcom/android/systemui/statusbar/switcher/SilentTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "SilentTracker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SilentTracker"

.field private static isOn:Z


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mPreRingtoneMode:I

.field private mPreStreamVolume:I

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->isOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/switcher/SilentTracker$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/switcher/SilentTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/SilentTracker;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/SilentTracker;->init()V

    .line 31
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    sput-boolean p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->isOn:Z

    return p0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mAudioManager:Landroid/media/AudioManager;

    .line 35
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->isOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 129
    const/16 v0, 0xf

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 62
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 72
    return-void
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 107
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->toggleStateChange(Landroid/content/Context;)V

    .line 109
    :try_start_0
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 110
    .local v0, audioService:Landroid/media/IAudioService;
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/media/IAudioService;->adjustStreamVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0           #audioService:Landroid/media/IAudioService;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 115
    .local v2, mode:I
    const-string v3, "SilentTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringer Mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-nez v2, :cond_2

    .line 117
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 118
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mAudioManager:Landroid/media/AudioManager;

    iget v3, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mPreStreamVolume:I

    if-nez v3, :cond_1

    const/4 v3, 0x6

    :goto_1
    invoke-virtual {v4, v6, v3, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 125
    :cond_0
    :goto_2
    return-void

    .line 111
    .end local v2           #mode:I
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "SilentTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IAudioService.adjustStreamVolume() threw RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v2       #mode:I
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mPreStreamVolume:I

    goto :goto_1

    .line 119
    :cond_2
    if-ne v2, v6, :cond_3

    .line 120
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mPreStreamVolume:I

    .line 121
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 122
    :cond_3
    if-ne v2, v8, :cond_0

    .line 123
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 4
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateView SilentTracker:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 46
    .local v0, mode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 47
    const v1, 0x7f0c00c0

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 48
    const v1, 0x7f020090

    invoke-virtual {p2, v1, v3, v3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    if-ne v0, v3, :cond_2

    .line 50
    const v1, 0x7f0c00bf

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 51
    const v1, 0x7f0200a9

    invoke-virtual {p2, v1, v3, v3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 52
    :cond_2
    if-nez v0, :cond_0

    .line 53
    const v1, 0x7f0c00be

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 54
    const v1, 0x7f0200a1

    invoke-virtual {p2, v1, v3, v3}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0
.end method
