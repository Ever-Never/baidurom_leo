.class Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver$1;->this$1:Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;

    iput-object p2, p0, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver$1;->this$1:Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;

    iget-object v0, v0, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver;->this$0:Lcom/baidu/launcher/app/Launcher;

    #getter for: Lcom/baidu/launcher/app/Launcher;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/app/Launcher;->access$300(Lcom/baidu/launcher/app/Launcher;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$BaiduWidgetUpdateReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->updateBaiduWidgets(Landroid/content/Intent;)V

    .line 1377
    return-void
.end method
