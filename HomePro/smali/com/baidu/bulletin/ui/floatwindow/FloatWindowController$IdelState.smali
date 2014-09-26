.class Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;
.super Ljava/lang/Object;
.source "FloatWindowController.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdelState"
.end annotation


# instance fields
.field private mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V
    .locals 0
    .parameter "floatWindowController"

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    .line 166
    return-void
.end method


# virtual methods
.method public autoSyncerShow()V
    .locals 4

    .prologue
    .line 171
    const-string v1, "FloatWindowController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin:IdelState:autoSyncerShow: from state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isMonitorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getPrepareShowState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 178
    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    .line 181
    .local v0, viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isHomeView()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isBulletinScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getShowState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 187
    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->showFloatWindow()V

    .line 189
    const-string v1, "FloatWindowController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IdelState:autoSyncerShow: to state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .end local v0           #viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    :cond_0
    const-string v1, "FloatWindowController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End: IdelState:autoSyncerShow: to state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IdelState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public clickFloatWindow()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public closeBulletin()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method public dragToBulletin()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public homeViewHide()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public homeViewVisble()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public launcherOnPause()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public launcherOnResume()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "IdelState"

    return-object v0
.end method
