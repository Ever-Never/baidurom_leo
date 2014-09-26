.class Lcom/baidu/launcher/app/Launcher$BulletinMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/app/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BulletinMonitorReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$BulletinMonitorReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/app/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1382
    invoke-direct {p0, p1}, Lcom/baidu/launcher/app/Launcher$BulletinMonitorReceiver;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$BulletinMonitorReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getCurrentView()Lcom/baidu/launcher/ui/logic/IBaseView;

    move-result-object v0

    instance-of v0, v0, Lcom/baidu/launcher/ui/homeview/HomeView;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$BulletinMonitorReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v0}, Lcom/baidu/launcher/app/Launcher;->access$1500(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->setCurrentScreen(I)V

    .line 1388
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$BulletinMonitorReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->showBulletinScreen()V

    .line 1391
    :cond_0
    return-void
.end method
