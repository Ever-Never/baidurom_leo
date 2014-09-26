.class Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;
.super Ljava/lang/Object;
.source "PiScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/newpiflow/widget/PiScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDataTask"
.end annotation


# instance fields
.field private piData:Lcom/inveno/newpiflow/model/PiData;

.field final synthetic this$0:Lcom/inveno/newpiflow/widget/PiScrollView;


# direct methods
.method private constructor <init>(Lcom/inveno/newpiflow/widget/PiScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/newpiflow/widget/PiScrollView;Lcom/inveno/newpiflow/widget/PiScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;-><init>(Lcom/inveno/newpiflow/widget/PiScrollView;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;)Lcom/inveno/newpiflow/model/PiData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    const/4 v1, 0x1

    #setter for: Lcom/inveno/newpiflow/widget/PiScrollView;->cancle:Z
    invoke-static {v0, v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$702(Lcom/inveno/newpiflow/widget/PiScrollView;Z)Z

    .line 568
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;

    .line 571
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 508
    :goto_0
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->cancle:Z
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$700(Lcom/inveno/newpiflow/widget/PiScrollView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->loadTask:Lcom/inveno/newpiflow/download/LoadFlowJsonTask;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$800(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/download/LoadFlowJsonTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->getData()Lcom/inveno/newpiflow/model/PiData;

    move-result-object v1

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;

    .line 517
    :cond_0
    const-string v1, "task"

    const-string v2, "22 \u53d6\u5230\u4e86\u4e00\u9897\u6570\u636e\uff0c\u53ef\u4ee5\u5f80\u4e0b\u4e86"

    invoke-static {v1, v2}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :goto_1
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->cancle:Z
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$700(Lcom/inveno/newpiflow/widget/PiScrollView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    :cond_1
    return-void

    .line 521
    :cond_2
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$100(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v1

    iget v1, v1, Lcom/inveno/newpiflow/widget/StrenchListview;->mTotalHeight:I

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v2}, Lcom/inveno/newpiflow/widget/PiScrollView;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$100(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v1

    iget v1, v1, Lcom/inveno/newpiflow/widget/StrenchListview;->mTotalHeight:I

    if-nez v1, :cond_5

    :cond_3
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isGuideShown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 522
    const-string v1, "PiScrollView"

    const-string v2, "break1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const-string v1, "PiScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStrenchListview.mTotalHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;
    invoke-static {v3}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$100(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v3

    iget v3, v3, Lcom/inveno/newpiflow/widget/StrenchListview;->mTotalHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v1, "PiScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeight() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    invoke-virtual {v3}, Lcom/inveno/newpiflow/widget/PiScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;

    if-eqz v1, :cond_8

    .line 557
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mUiHandler:Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$1000(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;

    invoke-virtual {v1, v4, v2}, Lcom/inveno/newpiflow/widget/PiScrollView$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 558
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;

    goto/16 :goto_0

    .line 527
    .end local v0           #msg:Landroid/os/Message;
    :cond_5
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$100(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->getProgressView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->mStrenchListview:Lcom/inveno/newpiflow/widget/StrenchListview;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$100(Lcom/inveno/newpiflow/widget/PiScrollView;)Lcom/inveno/newpiflow/widget/StrenchListview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/StrenchListview;->getProgressView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;

    if-nez v1, :cond_4

    .line 541
    :cond_6
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->isRefreshData:Z
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$900(Lcom/inveno/newpiflow/widget/PiScrollView;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 542
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #setter for: Lcom/inveno/newpiflow/widget/PiScrollView;->isRefreshData:Z
    invoke-static {v1, v4}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$902(Lcom/inveno/newpiflow/widget/PiScrollView;Z)Z

    goto :goto_2

    .line 546
    :cond_7
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->uiLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$300(Lcom/inveno/newpiflow/widget/PiScrollView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 548
    :try_start_0
    const-string v1, "task"

    const-string v3, "22 \u672a\u5230\u6761\u4ef6\u52a0view"

    invoke-static {v1, v3}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    #getter for: Lcom/inveno/newpiflow/widget/PiScrollView;->uiLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$300(Lcom/inveno/newpiflow/widget/PiScrollView;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_3
    :try_start_1
    monitor-exit v2

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 561
    :cond_8
    iget-object v1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->this$0:Lcom/inveno/newpiflow/widget/PiScrollView;

    const/4 v2, 0x1

    #setter for: Lcom/inveno/newpiflow/widget/PiScrollView;->isPiDataNull:Z
    invoke-static {v1, v2}, Lcom/inveno/newpiflow/widget/PiScrollView;->access$502(Lcom/inveno/newpiflow/widget/PiScrollView;Z)Z

    goto/16 :goto_0

    .line 550
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public setPiData(Lcom/inveno/newpiflow/model/PiData;)V
    .locals 0
    .parameter "piData"

    .prologue
    .line 574
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiScrollView$GetDataTask;->piData:Lcom/inveno/newpiflow/model/PiData;

    .line 575
    return-void
.end method
