.class Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;
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
    name = "PrepareShowState"
.end annotation


# instance fields
.field private mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V
    .locals 0
    .parameter "floatWindowController"

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    .line 242
    return-void
.end method

.method private shouldShow()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    .line 247
    .local v0, viewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isHomeView()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isBulletinScreen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 250
    const-string v3, "FloatWindowController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isHomeView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isHomeView()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", !viewManager.isBulletinScreen()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->isBulletinScreen()Z

    move-result v5

    if-nez v5, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return v2

    .line 253
    :cond_1
    const-string v2, "FloatWindowController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "should show failed viewmanager is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 256
    goto :goto_0
.end method


# virtual methods
.method public autoSyncerShow()V
    .locals 3

    .prologue
    .line 262
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin:PrepareShowState:autoSyncerShow: from state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getShowState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 268
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->showFloatWindow()V

    .line 270
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrepareShowState:autoSyncerShow: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End:PrepareShowState:autoSyncerShow: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method public clickFloatWindow()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public closeBulletin()V
    .locals 3

    .prologue
    .line 347
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin:PrepareShowState: closeBulletin: from state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getIdelState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 351
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    #calls: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->hideFloatWindow()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->access$200(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    .line 353
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End:PrepareShowState: closeBulletin: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method

.method public dragToBulletin()V
    .locals 3

    .prologue
    .line 334
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin:PrepareShowState: dragToBulletin: from state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getIdelState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 338
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    #calls: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->hideFloatWindow()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->access$200(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    .line 340
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End:PrepareShowState: dragToBulletin: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void
.end method

.method public homeViewHide()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public homeViewVisble()V
    .locals 3

    .prologue
    .line 305
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin:PrepareShowState:homeViewVisble: from state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getShowState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 311
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->showFloatWindow()V

    .line 313
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrepareShowState:homeViewVisble: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End:PrepareShowState:homeViewVisble: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method public launcherOnPause()V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public launcherOnResume()V
    .locals 3

    .prologue
    .line 280
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin:PrepareShowState:launcherOnResume: from state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getShowState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 286
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->showFloatWindow()V

    .line 288
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrepareShowState:launcherOnResume: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End:PrepareShowState:launcherOnResume: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$PrepareShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    const-string v0, "PrepareShowState"

    return-object v0
.end method
