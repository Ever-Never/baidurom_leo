.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;
.super Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.source "RingerModeStateTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;-><init>()V

    .line 15
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 29
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 32
    .local v0, am:Landroid/media/AudioManager;
    const/16 v1, 0x17

    .line 33
    .local v1, mode:I
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 46
    :cond_0
    :goto_0
    return v1

    .line 36
    :pswitch_0
    const/16 v1, 0x17

    .line 37
    goto :goto_0

    .line 39
    :pswitch_1
    const/16 v1, 0x15

    .line 40
    goto :goto_0

    .line 42
    :pswitch_2
    const/16 v1, 0x16

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 19
    const/4 v0, -0x1

    return v0
.end method

.method public getTitleStringId()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f0c01eb

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 101
    return-void
.end method

.method public setImageViewResources(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;)V
    .locals 4
    .parameter "aContext"
    .parameter "aSwitch"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;->getButtonId()I

    move-result v0

    .line 76
    .local v0, buttonId:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;->getIndicatorId()I

    move-result v1

    .line 77
    .local v1, indicatorId:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;->getPosition()I

    move-result v2

    .line 79
    .local v2, pos:I
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 96
    :goto_0
    return-void

    .line 81
    :pswitch_0
    const v3, 0x7f020181

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 83
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;->IND_DRAWABLE_ON:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 86
    :pswitch_1
    const v3, 0x7f020182

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 88
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;->IND_DRAWABLE_ON:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 91
    :pswitch_2
    const v3, 0x7f020180

    invoke-virtual {p2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    .line 93
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;->IND_DRAWABLE_ON:[I

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchCell;->setImageViewResource(II)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toggleState(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 61
    .local v0, am:Landroid/media/AudioManager;
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/ringermode/RingerModeStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 66
    :pswitch_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 69
    :pswitch_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
