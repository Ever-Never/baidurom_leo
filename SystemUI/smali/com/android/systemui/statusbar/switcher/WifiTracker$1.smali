.class Lcom/android/systemui/statusbar/switcher/WifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/WifiTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastReceiver onReceive.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 110
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 112
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 114
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiConnected:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->access$000(Lcom/android/systemui/statusbar/switcher/WifiTracker;)Z

    move-result v4

    .line 115
    .local v4, wasConnected:Z
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    #setter for: Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiConnected:Z
    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->access$002(Lcom/android/systemui/statusbar/switcher/WifiTracker;Z)Z

    .line 117
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiConnected:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->access$000(Lcom/android/systemui/statusbar/switcher/WifiTracker;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v4, :cond_4

    .line 119
    const-string v5, "wifiInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 120
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_0

    .line 121
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 123
    :cond_0
    if-eqz v1, :cond_3

    .line 124
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;

    #calls: Lcom/android/systemui/statusbar/switcher/WifiTracker;->huntForSsid(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    invoke-static {v6, v2, v1}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->access$200(Lcom/android/systemui/statusbar/switcher/WifiTracker;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiSsid:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->access$102(Lcom/android/systemui/statusbar/switcher/WifiTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    .end local v2           #mWifiManager:Landroid/net/wifi/WifiManager;
    .end local v3           #networkInfo:Landroid/net/NetworkInfo;
    .end local v4           #wasConnected:Z
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->updateStatus(Landroid/content/Context;)V

    .line 133
    return-void

    .line 115
    .restart local v2       #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v3       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v4       #wasConnected:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 126
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;

    #setter for: Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiSsid:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->access$102(Lcom/android/systemui/statusbar/switcher/WifiTracker;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 128
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiConnected:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->access$000(Lcom/android/systemui/statusbar/switcher/WifiTracker;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 129
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/WifiTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTracker;

    #setter for: Lcom/android/systemui/statusbar/switcher/WifiTracker;->mWifiSsid:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/switcher/WifiTracker;->access$102(Lcom/android/systemui/statusbar/switcher/WifiTracker;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
