.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    const-string v4, "SwitchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive:="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;

    .line 135
    .local v3, vStateTracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getInterestBroadcastAction()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->getInterestBroadcastAction()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .local v2, interest:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    invoke-virtual {v3, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #interest:Ljava/lang/String;
    .end local v3           #vStateTracker:Lcom/baidu/launcher/ui/widget/baidu/switchtool/StateTracker;
    :cond_2
    return-void
.end method

.method registerReceiverAction(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, aInterestAction:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .local v0, filter:Landroid/content/IntentFilter;
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, interest:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #interest:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager;->access$000()Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchManager$SettingsReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    return-void
.end method
