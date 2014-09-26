.class public Lcom/android/systemui/statusbar/switcher/BrightnessTracker;
.super Lcom/android/systemui/statusbar/switcher/SwitchTracker;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKLIGHT:I = 0x66

.field private static MAXIMUM_BACKLIGHT:I

.field private static MINIMUM_BACKLIGHT:I


# instance fields
.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private sSettingsObserver:Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;-><init>(Landroid/content/Context;)V

    .line 160
    new-instance v1, Lcom/android/systemui/statusbar/switcher/BrightnessTracker$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker$1;-><init>(Lcom/android/systemui/statusbar/switcher/BrightnessTracker;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 29
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->MINIMUM_BACKLIGHT:I

    .line 30
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->MAXIMUM_BACKLIGHT:I

    .line 31
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 103
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 105
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, brightness:I
    const/16 v4, 0x66

    if-lt v0, v4, :cond_0

    sget v4, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->MAXIMUM_BACKLIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v4, :cond_0

    const/4 v3, 0x1

    .line 113
    .end local v0           #brightness:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return v3

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 147
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 152
    .local v0, brightnessMode:I
    if-ne v0, v3, :cond_0

    .line 157
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :goto_0
    return v3

    .restart local v0       #brightnessMode:I
    .restart local v2       #power:Landroid/os/IPowerManager;
    :cond_0
    move v3, v4

    .line 152
    goto :goto_0

    .line 154
    .end local v0           #brightnessMode:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 155
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightness: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    move v3, v4

    .line 157
    goto :goto_0
.end method

.method private static getMaxBrightness(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 124
    :try_start_0
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 126
    .local v2, power:Landroid/os/IPowerManager;
    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 129
    .local v0, brightness:I
    const/16 v4, 0x66

    if-le v0, v4, :cond_0

    const/4 v3, 0x1

    .line 134
    .end local v0           #brightness:I
    .end local v2           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return v3

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBrightness: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 177
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 179
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 181
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 185
    .local v1, brightnessMode:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 193
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    .line 194
    sget v0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->MINIMUM_BACKLIGHT:I

    .line 195
    const/4 v1, 0x0

    .line 205
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    :goto_1
    if-nez v1, :cond_1

    .line 216
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 222
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 196
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :cond_2
    const/16 v5, 0x66

    if-ge v0, v5, :cond_3

    .line 197
    const/16 v0, 0x66

    goto :goto_0

    .line 198
    :cond_3
    sget v5, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->MAXIMUM_BACKLIGHT:I

    if-ge v0, v5, :cond_4

    .line 199
    sget v0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->MAXIMUM_BACKLIGHT:I

    goto :goto_0

    .line 201
    :cond_4
    const/4 v1, 0x1

    .line 202
    sget v0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->MINIMUM_BACKLIGHT:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 219
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v3

    .line 220
    .local v3, e:Landroid/provider/Settings$SettingNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBrightness: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method protected getSwitcherId()B
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x3

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.brightness.MODE_BRIGHTNESS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/switcher/BrightnessTracker;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;->startObserving()V

    .line 76
    :cond_0
    return-void
.end method

.method public onDetach(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onAttach(Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->mView:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;->stopObserving()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->sSettingsObserver:Lcom/android/systemui/statusbar/switcher/BrightnessTracker$SettingsObserver;

    .line 87
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onLongClick(Landroid/content/Context;)V

    .line 258
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "setting_item"

    const-string v2, "brightness"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setState(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 62
    return-void
.end method

.method protected toggleStateChange(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->toggleBrightness(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    int-to-byte v0, v1

    .line 56
    .local v0, state:B
    invoke-static {p1}, Lcom/android/systemui/UBCManager;->getDefault(Landroid/content/Context;)Lcom/android/systemui/UBCManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->getSwitcherId()B

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/UBCManager;->submitSwitcherClick(BB)V

    .line 57
    return-void
.end method

.method public updateView(Landroid/content/Context;Lcom/android/systemui/statusbar/switcher/SwitcherItemView;)V
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " BrightnessTracker updateView.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const v0, 0x7f020078

    invoke-virtual {p2, v0, v2, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    .line 50
    :goto_0
    const v0, 0x7f0c00af

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitle(I)V

    .line 51
    return-void

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->getBrightness(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const v0, 0x7f02007a

    invoke-virtual {p2, v0, v2, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/statusbar/switcher/BrightnessTracker;->getMaxBrightness(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    const v0, 0x7f02007b

    invoke-virtual {p2, v0, v2, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0

    .line 48
    :cond_2
    const v0, 0x7f020079

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->updateView(IZZ)V

    goto :goto_0
.end method
