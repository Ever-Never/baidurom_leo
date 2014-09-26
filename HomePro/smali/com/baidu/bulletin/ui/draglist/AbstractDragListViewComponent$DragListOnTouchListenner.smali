.class Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;
.super Ljava/lang/Object;
.source "AbstractDragListViewComponent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragListOnTouchListenner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;


# direct methods
.method private constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;-><init>(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v10, 0x4120

    const/high16 v9, -0x3ee0

    const/4 v8, 0x1

    const/4 v4, 0x2

    .line 319
    const/4 v7, 0x0

    .line 321
    .local v7, isConsume:Z
    const-string v0, "mm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event.Y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mState = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mFirstVisibleItemIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mFirstVisibleItemIndex:I
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$300(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", event.getActionMasked() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v2

    .line 326
    .local v2, preState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$400(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 328
    .local v6, firstView:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 335
    :goto_0
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollY = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$400(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getScrollY()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", listView y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$400(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "first y = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$2;->$SwitchMap$com$baidu$bulletin$ui$draglist$IOnStateChangeListener$State:[I

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 617
    :cond_0
    :goto_1
    return v7

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mEmptyView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$500(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    .line 340
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mFirstVisibleItemIndex:I
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$300(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v0

    const/high16 v1, -0x3f60

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 344
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN_PREPEAR:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 345
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$602(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;F)F

    .line 347
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    iget-object v8, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v8}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 351
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto :goto_1

    .line 353
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 355
    :cond_4
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 356
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$902(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;F)F

    .line 358
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 365
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 366
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 367
    .local v5, currentY:F
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->isBigPullDownThreshold(FF)Z
    invoke-static {v0, v1, v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1000(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 370
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    iget-object v8, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v8}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v5

    .end local v5           #currentY:F
    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 374
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 376
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 378
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 380
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    iget-object v8, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v8}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 383
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 388
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 389
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 390
    .restart local v5       #currentY:F
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->distance(FF)F
    invoke-static {v0, v1, v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1100(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;FF)F

    move-result v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 391
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 393
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 397
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 400
    :cond_6
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 402
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 406
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 408
    .end local v5           #currentY:F
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 409
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 410
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 411
    .restart local v5       #currentY:F
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 415
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 421
    .end local v5           #currentY:F
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 424
    .restart local v5       #currentY:F
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->distance(FF)F
    invoke-static {v0, v1, v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1100(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;FF)F

    move-result v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 426
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 428
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 432
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 434
    :cond_8
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 435
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 439
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 441
    .end local v5           #currentY:F
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 442
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 443
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 444
    .restart local v5       #currentY:F
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 448
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 455
    .end local v5           #currentY:F
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_b

    .line 456
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 457
    .restart local v5       #currentY:F
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v0

    sub-float v0, v5, v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 458
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 460
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 464
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 466
    :cond_a
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 467
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 471
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 473
    .end local v5           #currentY:F
    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 474
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->REFRESH:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 475
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 476
    .restart local v5       #currentY:F
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 480
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    .line 483
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1300(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->onRefreshNew(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V

    goto/16 :goto_1

    .line 488
    .end local v5           #currentY:F
    :pswitch_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 489
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 490
    .restart local v5       #currentY:F
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->distance(FF)F
    invoke-static {v0, v1, v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1100(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;FF)F

    move-result v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mDragHeaderHeight:I
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    .line 491
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 493
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 497
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 499
    :cond_c
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 501
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 505
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 508
    .end local v5           #currentY:F
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 509
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->REFRESH:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 510
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 511
    .restart local v5       #currentY:F
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mOnDragListStateChangedListener:Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$700(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mStartY:F
    invoke-static {v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$600(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/IOnDragListStateChangedListener;->onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;FF)V

    .line 515
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    .line 518
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$1300(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->onRefreshNew(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V

    goto/16 :goto_1

    .line 525
    .end local v5           #currentY:F
    :pswitch_6
    const/4 v7, 0x0

    .line 527
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 532
    :pswitch_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 534
    .restart local v5       #currentY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_f

    .line 535
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$900(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v0

    sub-float v0, v5, v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_e

    .line 536
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0, v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$902(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;F)F

    .line 538
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 540
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 542
    :cond_e
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$900(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v0

    sub-float v0, v5, v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0, v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$902(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;F)F

    .line 545
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_UP:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 547
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 549
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 550
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 552
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 560
    .end local v5           #currentY:F
    :pswitch_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 561
    .restart local v5       #currentY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_11

    .line 562
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$900(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v0

    sub-float v0, v5, v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_10

    .line 563
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0, v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$902(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;F)F

    .line 565
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_DOWN_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 567
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 569
    :cond_10
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$900(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v0

    sub-float v0, v5, v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0, v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$902(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;F)F

    .line 572
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_UP:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 574
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 576
    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 577
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 579
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 589
    .end local v5           #currentY:F
    :pswitch_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 590
    .restart local v5       #currentY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_13

    .line 591
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$900(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v0

    sub-float v0, v5, v0

    cmpl-float v0, v0, v10

    if-lez v0, :cond_12

    .line 592
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0, v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$902(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;F)F

    .line 594
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 596
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 598
    :cond_12
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$900(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)F

    move-result v0

    sub-float v0, v5, v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mPreY:F
    invoke-static {v0, v5}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$902(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;F)F

    .line 601
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_UP_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 603
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 605
    :cond_13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 606
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    #setter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$202(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 608
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$DragListOnTouchListenner;->this$0:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->mState:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$200(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    move-result-object v1

    #calls: Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->notifyAllStageChanngeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    invoke-static {v0, v2, v1}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;->access$800(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V

    goto/16 :goto_1

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method
