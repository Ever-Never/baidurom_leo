.class Lcom/android/systemui/statusbar/switcher/SavePowerTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SavePowerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/SavePowerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/SavePowerTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/SavePowerTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/SavePowerTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastReceiver onReceive.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/SavePowerTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/SavePowerTracker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/switcher/SavePowerTracker;->updateStatus(Landroid/content/Context;)V

    .line 80
    return-void
.end method
