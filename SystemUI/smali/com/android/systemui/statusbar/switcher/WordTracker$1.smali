.class Lcom/android/systemui/statusbar/switcher/WordTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WordTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/switcher/WordTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/WordTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/WordTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/WordTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WordTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 62
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

    .line 63
    const-string v0, "stopself"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WordTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WordTracker;

    iput v2, v0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mCurrentState:I

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WordTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WordTracker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/switcher/WordTracker;->updateStatus(Landroid/content/Context;)V

    .line 69
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/WordTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/WordTracker;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/statusbar/switcher/WordTracker;->mCurrentState:I

    goto :goto_0
.end method
