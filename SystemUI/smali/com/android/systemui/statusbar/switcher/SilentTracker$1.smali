.class Lcom/android/systemui/statusbar/switcher/SilentTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SilentTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/SilentTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/SilentTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/SilentTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/SilentTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, action:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver onReceive.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->debug(Ljava/lang/String;)V

    .line 92
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-string v2, "android.media.EXTRA_RINGER_MODE"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 94
    .local v1, ringtoneMode:I
    const-string v2, "SilentTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-nez v1, :cond_1

    .line 96
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/SilentTracker;->access$002(Z)Z

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/SilentTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/SilentTracker;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/switcher/SilentTracker;->updateStatus(Landroid/content/Context;)V

    .line 102
    .end local v1           #ringtoneMode:I
    :cond_0
    return-void

    .line 98
    .restart local v1       #ringtoneMode:I
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/SilentTracker;->access$002(Z)Z

    goto :goto_0
.end method
