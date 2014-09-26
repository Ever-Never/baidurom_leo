.class Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity$1;
.super Ljava/lang/Object;
.source "ConfirmActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity$1;->this$0:Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 30
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 32
    .local v0, pm:Landroid/os/IPowerManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0           #pm:Landroid/os/IPowerManager;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity$1;->this$0:Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;->finish()V

    .line 36
    return-void

    .line 33
    :catch_0
    move-exception v1

    goto :goto_0
.end method
