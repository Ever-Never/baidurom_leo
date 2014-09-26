.class Lcom/baidu/launcher/app/Launcher$10;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/Launcher;->showBulletinSettings(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$10;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$10;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mUIController:Lcom/baidu/bulletin/ui/logic/UIController;
    invoke-static {v0}, Lcom/baidu/launcher/app/Launcher;->access$1700(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->showSettings()V

    .line 1583
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$10;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mIndicator:Lcom/baidu/launcher/ui/homeview/Indicator;
    invoke-static {v0}, Lcom/baidu/launcher/app/Launcher;->access$1800(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/homeview/Indicator;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setVisibility(I)V

    .line 1586
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$10;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mWorkspace:Lcom/baidu/launcher/ui/homeview/Workspace;
    invoke-static {v0}, Lcom/baidu/launcher/app/Launcher;->access$1500(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/homeview/Workspace;->dismissDockbar()V

    .line 1588
    return-void
.end method
