.class Lcom/baidu/launcher/utils/DesktopMover$3;
.super Ljava/lang/Object;
.source "DesktopMover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/utils/DesktopMover;->moveDesktop(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/utils/DesktopMover;

.field final synthetic val$destinationScreen:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/utils/DesktopMover;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/baidu/launcher/utils/DesktopMover$3;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    iput p2, p0, Lcom/baidu/launcher/utils/DesktopMover$3;->val$destinationScreen:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 241
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover$3;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/baidu/launcher/utils/DesktopMover;->access$300(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 249
    :cond_0
    return-void

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/utils/DesktopMover$3;->this$0:Lcom/baidu/launcher/utils/DesktopMover;

    #getter for: Lcom/baidu/launcher/utils/DesktopMover;->mLauncher:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/baidu/launcher/utils/DesktopMover;->access$300(Lcom/baidu/launcher/utils/DesktopMover;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    .line 243
    .local v0, launcher:Lcom/baidu/launcher/app/Launcher;
    if-eqz v0, :cond_0

    .line 244
    :goto_0
    iget v1, p0, Lcom/baidu/launcher/utils/DesktopMover$3;->val$destinationScreen:I

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/homeview/Workspace;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/logic/ViewManager;->getWorkspace()Lcom/baidu/launcher/ui/homeview/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/homeview/Workspace;->addScreen()Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 246
    const-string v1, "DesktopMover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##add new screen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/launcher/utils/DesktopMover$3;->val$destinationScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
