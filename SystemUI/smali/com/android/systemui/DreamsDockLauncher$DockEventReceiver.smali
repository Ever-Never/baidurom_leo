.class public Lcom/android/systemui/DreamsDockLauncher$DockEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DreamsDockLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/DreamsDockLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DockEventReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screensaver_activate_on_dock"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 65
    .local v0, activateOnDock:Z
    :goto_0
    if-nez v0, :cond_2

    .line 77
    :cond_0
    :goto_1
    return-void

    .end local v0           #activateOnDock:Z
    :cond_1
    move v0, v4

    .line 61
    goto :goto_0

    .line 67
    .restart local v0       #activateOnDock:Z
    :cond_2
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 69
    .local v1, extras:Landroid/os/Bundle;
    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 71
    .local v2, state:I
    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 74
    :cond_3
    #calls: Lcom/android/systemui/DreamsDockLauncher;->launchDream(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/android/systemui/DreamsDockLauncher;->access$000(Landroid/content/Context;)V

    goto :goto_1
.end method
