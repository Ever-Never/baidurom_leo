.class Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;
.super Ljava/lang/Object;
.source "DragListViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoSyncerFinishedRunnable"
.end annotation


# instance fields
.field mUpdateTopicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p2, updateTopicList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;->mUpdateTopicList:Ljava/util/List;

    .line 470
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 474
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;->mUpdateTopicList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;->mUpdateTopicList:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I
    invoke-static {v2}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->access$400(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    const-string v1, "DragListViewComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topicid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->access$400(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is update. will refresh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->refresh()V

    .line 480
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;

    move-result-object v0

    .line 481
    .local v0, controller:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;->autoSyncerShow()V

    .line 487
    .end local v0           #controller:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowController;
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    const-string v1, "DragListViewComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topicId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->access$400(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is not updated."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
