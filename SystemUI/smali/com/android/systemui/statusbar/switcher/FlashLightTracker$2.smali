.class Lcom/android/systemui/statusbar/switcher/FlashLightTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "FlashLightTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/FlashLightTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/FlashLightTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/FlashLightTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker$2;->this$0:Lcom/android/systemui/statusbar/switcher/FlashLightTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastReceiver onReceive.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 115
    const-string v1, "com.baidu.action.FLASHLIGHT_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->access$002(Z)Z

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker$2;->this$0:Lcom/android/systemui/statusbar/switcher/FlashLightTracker;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->updateStatus(Landroid/content/Context;)V

    .line 119
    :cond_0
    return-void
.end method
