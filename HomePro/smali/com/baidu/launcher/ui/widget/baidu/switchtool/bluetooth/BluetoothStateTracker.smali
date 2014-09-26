.class public Lcom/baidu/launcher/ui/widget/baidu/switchtool/bluetooth/BluetoothStateTracker;
.super Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
.source "BluetoothStateTracker.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;-><init>()V

    .line 14
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/bluetooth/BluetoothStateTracker;->registerBroadcastAction(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 66
    packed-switch p0, :pswitch_data_0

    .line 76
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 68
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 70
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 74
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 30
    .local v0, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/bluetooth/BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    .line 33
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 18
    if-eqz p1, :cond_0

    const v0, 0x7f020186

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020185

    goto :goto_0
.end method

.method public getTitleStringId()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f0c01e8

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    if-nez p2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 62
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/bluetooth/BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/bluetooth/BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 41
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 42
    .local v0, bluetooth:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 43
    if-eqz p2, :cond_1

    .line 44
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0
.end method
