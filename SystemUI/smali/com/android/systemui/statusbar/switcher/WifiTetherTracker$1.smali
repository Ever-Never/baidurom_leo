.class Lcom/android/systemui/statusbar/switcher/WifiTetherTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 145
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;

    const-string v5, "wifi_state"

    const/16 v6, 0xe

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #calls: Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->handleWifiApStateChanged(I)V
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->access$000(Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;I)V

    .line 158
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->updateStatus(Landroid/content/Context;)V

    .line 159
    return-void

    .line 147
    :cond_1
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 148
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 152
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 154
    .local v3, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v7

    #calls: Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->access$100(Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;

    #calls: Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->enableWifiCheckBox()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;->access$200(Lcom/android/systemui/statusbar/switcher/WifiTetherTracker;)V

    goto :goto_0
.end method
