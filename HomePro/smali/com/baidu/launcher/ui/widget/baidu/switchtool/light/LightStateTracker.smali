.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;
.super Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.source "LightStateTracker.java"


# static fields
.field private static final BRIGHTNESS_DIM:I = 0x14

.field private static final BRIGHTNESS_ON:I = 0xff

.field private static final DEFAULT_BACKLIGHT:I = 0x66

.field private static final LIGHTSWITCH_INFORM_UPDATE:Ljava/lang/String; = "com.baidu.launcher.lightswitch"

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;-><init>()V

    .line 38
    const-string v0, "com.baidu.launcher.lightswitch"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 40
    const-string v0, "screen_brightness_mode"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->registerObserverUri(Ljava/lang/String;Z)V

    .line 41
    const-string v0, "screen_brightness"

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->registerObserverUri(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public static isInAutoMode(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 225
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 228
    .local v3, power:Landroid/os/IPowerManager;
    if-eqz v3, :cond_0

    .line 229
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 230
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 232
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 234
    .local v1, brightnessMode:I
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    if-ne v1, v4, :cond_1

    .line 243
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v4

    .line 239
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 241
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private setScreenBrightness(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "paramInt"

    .prologue
    .line 191
    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 192
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 193
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 195
    .local v1, localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    int-to-float v3, p2

    const/high16 v4, 0x437f

    div-float v0, v3, v4

    .line 196
    .local v0, f:F
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 198
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 202
    return-void

    .line 200
    .end local v0           #f:F
    .end local v1           #localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #window:Landroid/view/Window;
    .restart local p1
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Context must be Launcher!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static updateScreenBrightness(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 205
    .local v1, cr:Landroid/content/ContentResolver;
    const/16 v0, -0xff

    .line 206
    .local v0, brightness:I
    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->isInAutoMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 208
    :try_start_0
    const-string v6, "screen_brightness"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 213
    :cond_0
    :goto_0
    instance-of v6, p0, Landroid/app/Activity;

    if-eqz v6, :cond_1

    .line 214
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 215
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 217
    .local v4, localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    int-to-float v6, v0

    const/high16 v7, 0x437f

    div-float v3, v6, v7

    .line 218
    .local v3, f:F
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 219
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 223
    return-void

    .line 209
    .end local v3           #f:F
    .end local v4           #localLayoutParams:Landroid/view/WindowManager$LayoutParams;
    .end local v5           #window:Landroid/view/Window;
    .restart local p0
    :catch_0
    move-exception v2

    .line 210
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Context must be Launcher!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/16 v4, 0xb

    .line 55
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v3

    .line 58
    .local v3, power:Landroid/os/IPowerManager;
    if-eqz v3, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 60
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 64
    .local v1, brightnessMode:I
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 68
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 82
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v4

    .line 70
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    :cond_1
    const/16 v4, 0x66

    if-ge v0, v4, :cond_2

    .line 71
    const/16 v4, 0xd

    goto :goto_0

    .line 72
    :cond_2
    const/16 v4, 0xff

    if-ge v0, v4, :cond_3

    .line 73
    const/16 v4, 0xe

    goto :goto_0

    .line 75
    :cond_3
    const/16 v4, 0xc

    goto :goto_0

    .line 78
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 45
    const/4 v0, -0x1

    return v0
.end method

.method public getTitleStringId()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f0c01e7

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 187
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 182
    return-void
.end method

.method public setImageViewResources(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V
    .locals 4
    .parameter "aContext"
    .parameter "aSwitch"

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->getButtonId()I

    move-result v0

    .line 151
    .local v0, buttonId:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->getIndicatorId()I

    move-result v1

    .line 152
    .local v1, indicatorId:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->getPosition()I

    move-result v2

    .line 154
    .local v2, pos:I
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 177
    :goto_0
    return-void

    .line 156
    :pswitch_0
    const v3, 0x7f020187

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 158
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->IND_DRAWABLE_ON:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 161
    :pswitch_1
    const v3, 0x7f020189

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 163
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->IND_DRAWABLE_OFF:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 167
    :pswitch_2
    const v3, 0x7f020188

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 169
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->IND_DRAWABLE_ON:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 172
    :pswitch_3
    const v3, 0x7f02018a

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 174
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->IND_DRAWABLE_ON:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 98
    :try_start_0
    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 100
    .local v4, power:Landroid/os/IPowerManager;
    if-eqz v4, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 103
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v5, "screen_brightness"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, brightness:I
    const/4 v1, 0x0

    .line 106
    .local v1, brightnessMode:I
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 124
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    if-nez v1, :cond_2

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->setScreenBrightness(Landroid/content/Context;I)V

    .line 135
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    :cond_0
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "com.baidu.launcher.lightswitch"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #power:Landroid/os/IPowerManager;
    :cond_1
    :goto_2
    return-void

    .line 110
    .restart local v0       #brightness:I
    .restart local v1       #brightnessMode:I
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #power:Landroid/os/IPowerManager;
    :pswitch_0
    const/16 v0, 0x1e

    .line 111
    const/4 v1, 0x0

    .line 112
    goto :goto_0

    .line 114
    :pswitch_1
    const/16 v0, 0x66

    .line 115
    goto :goto_0

    .line 117
    :pswitch_2
    const/16 v0, 0xff

    .line 118
    goto :goto_0

    .line 120
    :pswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 137
    :cond_2
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 138
    const/16 v5, -0xff

    invoke-direct {p0, p1, v5}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/light/LightStateTracker;->setScreenBrightness(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 145
    .end local v0           #brightness:I
    .end local v1           #brightnessMode:I
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v5

    goto :goto_2

    .line 106
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
