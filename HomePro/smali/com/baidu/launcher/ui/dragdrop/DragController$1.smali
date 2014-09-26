.class Lcom/baidu/launcher/ui/dragdrop/DragController$1;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/dragdrop/DragController;->endDrag(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragController;)V
    .locals 0
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$1;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$1;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->access$000(Lcom/baidu/launcher/ui/dragdrop/DragController;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->exitFullscreen()V

    .line 570
    return-void
.end method
