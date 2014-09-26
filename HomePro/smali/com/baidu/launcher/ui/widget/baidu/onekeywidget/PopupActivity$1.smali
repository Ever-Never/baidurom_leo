.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;
.super Landroid/os/Handler;
.source "PopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 89
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 91
    :sswitch_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateBarinAnimation()V
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V

    .line 94
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$200(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 95
    .local v5, message:Landroid/os/Message;
    const/16 v6, 0x2714

    iput v6, v5, Landroid/os/Message;->what:I

    .line 96
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$200(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v7, 0x28

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 102
    .end local v5           #message:Landroid/os/Message;
    :sswitch_1
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mShowPercentTips:Z
    invoke-static {v6, v8}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$302(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;Z)Z

    .line 103
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateMemoryTips()V
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$400(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V

    goto :goto_0

    .line 107
    :sswitch_2
    const-string v6, "PopupActivity"

    const-string v7, "CLEAN_ALL_APPS_FINISH msg arrivied"

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mCleanAllOperationOver:Z
    invoke-static {v6, v8}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$502(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;Z)Z

    .line 110
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$700(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemFreeSize()J

    move-result-wide v7

    long-to-int v7, v7

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I
    invoke-static {v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$602(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;I)I

    .line 111
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$700(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getMemTotalSize()J

    move-result-wide v7

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryFreeSize:I
    invoke-static {v9}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mMemoryUsedSize:I
    invoke-static {v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$802(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;I)I

    .line 113
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I

    move-result v6

    if-nez v6, :cond_0

    .line 114
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateUI()V
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$900(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V

    goto :goto_0

    .line 120
    :sswitch_3
    const/4 v1, 0x0

    .line 121
    .local v1, appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressAnimationStatus:I
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 124
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 125
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 126
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;

    .line 127
    .restart local v1       #appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;->isLocked()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 128
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 132
    :cond_2
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->setList(Ljava/util/List;)V

    .line 133
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Landroid/widget/GridView;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 137
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;>;"
    :cond_3
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mOptimizationWrapper:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$700(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization;->getAppsList()Ljava/util/ArrayList;

    move-result-object v2

    .line 140
    .local v2, applist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    if-eqz v2, :cond_0

    .line 144
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 146
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;

    .line 147
    .local v0, app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;

    .end local v1           #appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;->getMergedItem()Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;-><init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/CleanableAppInfo;Landroid/content/Context;)V

    .line 149
    .restart local v1       #appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    .end local v0           #app:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;
    :cond_4
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mProgressPanel:Landroid/view/View;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1300(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Landroid/widget/GridView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setVisibility(I)V

    .line 154
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->setList(Ljava/util/List;)V

    .line 155
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mGridView:Landroid/widget/GridView;
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Landroid/widget/GridView;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;
    invoke-static {v7}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 159
    .end local v1           #appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;
    .end local v2           #applist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/WrapperConvenientOptimization$MergedItemWrapper;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :sswitch_4
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->updateWidgetBar()V
    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V

    goto/16 :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x3ed -> :sswitch_1
        0x2710 -> :sswitch_2
        0x2711 -> :sswitch_4
        0x2712 -> :sswitch_3
        0x2714 -> :sswitch_0
    .end sparse-switch
.end method
