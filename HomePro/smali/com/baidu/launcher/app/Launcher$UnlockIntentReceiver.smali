.class Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/app/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/app/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1653
    invoke-direct {p0, p1}, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1656
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1657
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1670
    :goto_0
    return-void

    .line 1659
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1660
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v1}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mStopped:Z
    invoke-static {v2}, Lcom/baidu/launcher/app/Launcher;->access$1900(Lcom/baidu/launcher/app/Launcher;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->onUserPresent(Z)V

    goto :goto_0

    .line 1662
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/baidu/launcher/app/Launcher;->access$1400(Lcom/baidu/launcher/app/Launcher;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver$1;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver$1;-><init>(Lcom/baidu/launcher/app/Launcher$UnlockIntentReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
