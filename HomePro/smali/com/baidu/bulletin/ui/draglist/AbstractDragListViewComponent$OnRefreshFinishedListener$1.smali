.class Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;
.super Ljava/lang/Object;
.source "AbstractDragListViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->onFinished(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 735
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v2

    .line 736
    .local v2, preState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 738
    const-string v0, "panxu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFinished--- mstate = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v3, v3, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v3, v3, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v4, v4, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    iget-object v5, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v5, v5, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 742
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener$1;->this$1:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    .line 744
    return-void
.end method
