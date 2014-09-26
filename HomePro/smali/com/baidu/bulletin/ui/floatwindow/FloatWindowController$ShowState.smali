.class Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;
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
    name = "ShowState"
.end annotation


# instance fields
.field private mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V
    .locals 0
    .parameter "floatWindowController"

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    .line 368
    return-void
.end method


# virtual methods
.method public autoSyncerShow()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public clickFloatWindow()V
    .locals 3

    .prologue
    .line 411
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin: ShowState: clickFloatWindow: from state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getIdelState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 415
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    #calls: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->hideFloatWindow()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->access$200(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    .line 416
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    #calls: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->moveToBulletin()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->access$300(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    .line 418
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End: homeViewHide: clickFloatWindow: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-void
.end method

.method public closeBulletin()V
    .locals 3

    .prologue
    .line 438
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin: ShowState: closeBulletin: from state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getIdelState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 442
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    #calls: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->hideFloatWindow()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->access$200(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    .line 444
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End: homeViewHide: closeBulletin: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void
.end method

.method public dragToBulletin()V
    .locals 3

    .prologue
    .line 424
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin: ShowState: dragToBulletin: from state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getIdelState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 428
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    #calls: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->hideFloatWindow()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->access$200(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    .line 430
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End: homeViewHide: dragToBulletin: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method public homeViewHide()V
    .locals 3

    .prologue
    .line 399
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin: ShowState: homeViewHide: from state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getPrepareShowState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 403
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    #calls: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->hideFloatWindow()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->access$200(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    .line 405
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End: homeViewHide: launcherOnPause: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void
.end method

.method public homeViewVisble()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method public launcherOnPause()V
    .locals 3

    .prologue
    .line 382
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin: ShowState: launcherOnPause: from state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getPrepareShowState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->setState(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;)V

    .line 386
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    #calls: Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->hideFloatWindow()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->access$200(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;)V

    .line 388
    const-string v0, "FloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End: ShowState: launcherOnPause: to state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$ShowState;->mFloatWindowController:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getCurrentState()Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController$IFloatWindowState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void
.end method

.method public launcherOnResume()V
    .locals 0

    .prologue
    .line 378
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    const-string v0, "ShowState"

    return-object v0
.end method
