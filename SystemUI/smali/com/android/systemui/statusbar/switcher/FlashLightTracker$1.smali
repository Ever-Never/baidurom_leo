.class Lcom/android/systemui/statusbar/switcher/FlashLightTracker$1;
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
    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/FlashLightTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker$1;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->access$002(Z)Z

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/FlashLightTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/FlashLightTracker$1;->this$0:Lcom/android/systemui/statusbar/switcher/FlashLightTracker;

    #getter for: Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->access$100(Lcom/android/systemui/statusbar/switcher/FlashLightTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/FlashLightTracker;->updateStatus(Landroid/content/Context;)V

    .line 47
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
