.class Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/dragdrop/DragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/dragdrop/DragController;)V
    .locals 0
    .parameter

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragScroller:Lcom/baidu/launcher/ui/dragdrop/DragScroller;
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->access$200(Lcom/baidu/launcher/ui/dragdrop/DragController;)Lcom/baidu/launcher/ui/dragdrop/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/launcher/ui/dragdrop/DragScroller;->scroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragScroller:Lcom/baidu/launcher/ui/dragdrop/DragScroller;
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->access$200(Lcom/baidu/launcher/ui/dragdrop/DragController;)Lcom/baidu/launcher/ui/dragdrop/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragScroller:Lcom/baidu/launcher/ui/dragdrop/DragScroller;
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->access$200(Lcom/baidu/launcher/ui/dragdrop/DragController;)Lcom/baidu/launcher/ui/dragdrop/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/launcher/ui/dragdrop/DragScroller;->scroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1252
    iget v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragScroller:Lcom/baidu/launcher/ui/dragdrop/DragScroller;
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->access$200(Lcom/baidu/launcher/ui/dragdrop/DragController;)Lcom/baidu/launcher/ui/dragdrop/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/launcher/ui/dragdrop/DragScroller;->scrollLeft()V

    .line 1257
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/ui/dragdrop/DragController;->mScrollState:I
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/dragdrop/DragController;->access$302(Lcom/baidu/launcher/ui/dragdrop/DragController;I)I

    .line 1258
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragController;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->access$000(Lcom/baidu/launcher/ui/dragdrop/DragController;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->getDragLayer()Lcom/baidu/launcher/ui/dragdrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragLayer;->onExitScrollArea()V

    .line 1260
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    #calls: Lcom/baidu/launcher/ui/dragdrop/DragController;->forceMoveEvent()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->access$400(Lcom/baidu/launcher/ui/dragdrop/DragController;)V

    .line 1265
    :cond_0
    return-void

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->this$0:Lcom/baidu/launcher/ui/dragdrop/DragController;

    #getter for: Lcom/baidu/launcher/ui/dragdrop/DragController;->mDragScroller:Lcom/baidu/launcher/ui/dragdrop/DragScroller;
    invoke-static {v0}, Lcom/baidu/launcher/ui/dragdrop/DragController;->access$200(Lcom/baidu/launcher/ui/dragdrop/DragController;)Lcom/baidu/launcher/ui/dragdrop/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/launcher/ui/dragdrop/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 1268
    iput p1, p0, Lcom/baidu/launcher/ui/dragdrop/DragController$ScrollRunnable;->mDirection:I

    .line 1269
    return-void
.end method
