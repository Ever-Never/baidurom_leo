.class Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;
.super Landroid/os/Handler;
.source "PiScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/newpiflow/widget/PiScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiHandler"
.end annotation


# instance fields
.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inveno/newpiflow/widget/PiScrollView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/inveno/newpiflow/widget/PiScrollView;


# direct methods
.method public constructor <init>(Lcom/inveno/newpiflow/widget/PiScrollView;Lcom/inveno/newpiflow/widget/PiScrollView;)V
    .locals 1
    .parameter
    .parameter "piScrollView"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 443
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    .line 444
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 448
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 449
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 472
    :goto_0
    return-void

    .line 451
    :pswitch_0
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$100(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inveno/newpiflow/model/PiData;

    invoke-virtual {v1, v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->setData(Lcom/inveno/newpiflow/model/PiData;)V

    .line 452
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$100(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->updateLoadMoreView(I)V

    .line 453
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mPiMainView:Lcom/inveno/newpiflow/widget/PiMainView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$200(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/PiMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->getPullRefreshView()Lcom/inveno/newpiflow/widget/PullToRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->onFooterRefreshComplete()V

    goto :goto_0

    .line 457
    :pswitch_1
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->uiLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$300(Lcom/inveno/newpiflow/widget/PiScrollView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->uiLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$300(Lcom/inveno/newpiflow/widget/PiScrollView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 459
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 460
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$400(Lcom/inveno/newpiflow/widget/PiScrollView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 461
    :try_start_1
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->factoryLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$400(Lcom/inveno/newpiflow/widget/PiScrollView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 462
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 459
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 465
    :pswitch_2
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->isPiDataNull:Z
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$500(Lcom/inveno/newpiflow/widget/PiScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    const/4 v1, 0x0

    #setter for: Lcom/inveno/newpiflow/widget/PiScrollView;->isPiDataNull:Z
    invoke-static {v0, v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$502(Lcom/inveno/newpiflow/widget/PiScrollView;Z)Z

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mPiMainView:Lcom/inveno/newpiflow/widget/PiMainView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$200(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/PiMainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiMainView;->getPullRefreshView()Lcom/inveno/newpiflow/widget/PullToRefreshView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PullToRefreshView;->onFooterRefreshComplete()V

    goto/16 :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
