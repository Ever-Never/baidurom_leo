.class Lcom/baidu/bulletin/DataSyncer$1;
.super Ljava/lang/Object;
.source "DataSyncer.java"

# interfaces
.implements Lcom/baidu/bulletin/network/logic/DownloadObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/DataSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/DataSyncer;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/DataSyncer;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/baidu/bulletin/DataSyncer$1;->this$0:Lcom/baidu/bulletin/DataSyncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 51
    iget-object v7, p0, Lcom/baidu/bulletin/DataSyncer$1;->this$0:Lcom/baidu/bulletin/DataSyncer;

    const/4 v8, 0x0

    #setter for: Lcom/baidu/bulletin/DataSyncer;->mUpdateInfoDownloader:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;
    invoke-static {v7, v8}, Lcom/baidu/bulletin/DataSyncer;->access$002(Lcom/baidu/bulletin/DataSyncer;Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    .line 52
    iget-object v7, p0, Lcom/baidu/bulletin/DataSyncer$1;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #getter for: Lcom/baidu/bulletin/DataSyncer;->mTaskCancelled:Z
    invoke-static {v7}, Lcom/baidu/bulletin/DataSyncer;->access$100(Lcom/baidu/bulletin/DataSyncer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 77
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/DataSyncer;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v8, "onDownloadValidationSuccess >>>>>"

    invoke-static {v7, v8}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v7, p0, Lcom/baidu/bulletin/DataSyncer$1;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #getter for: Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v7}, Lcom/baidu/bulletin/DataSyncer;->access$300(Lcom/baidu/bulletin/DataSyncer;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/bulletin/DataRepository;->channelVersion()Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getUpdatedCount()I

    move-result v4

    .line 58
    .local v4, updatedCount:I
    iget-object v7, p0, Lcom/baidu/bulletin/DataSyncer$1;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #getter for: Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v7}, Lcom/baidu/bulletin/DataSyncer;->access$300(Lcom/baidu/bulletin/DataSyncer;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/bulletin/DataRepository;->metabolismData()I

    move-result v7

    if-lez v7, :cond_4

    move v2, v5

    .line 59
    .local v2, metabolismChanged:Z
    :goto_1
    iget-object v7, p0, Lcom/baidu/bulletin/DataSyncer$1;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #calls: Lcom/baidu/bulletin/DataSyncer;->pageChannelItems(Z)Z
    invoke-static {v7, v2}, Lcom/baidu/bulletin/DataSyncer;->access$400(Lcom/baidu/bulletin/DataSyncer;Z)Z

    move-result v3

    .line 62
    .local v3, pageChanged:Z
    if-nez v2, :cond_1

    if-eqz v3, :cond_5

    :cond_1
    move v1, v5

    .line 63
    .local v1, dataChanged:Z
    :goto_2
    if-eqz v1, :cond_2

    .line 64
    invoke-static {}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->resetPageDataCache()V

    .line 68
    :cond_2
    iget-object v5, p0, Lcom/baidu/bulletin/DataSyncer$1;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #getter for: Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;
    invoke-static {v5}, Lcom/baidu/bulletin/DataSyncer;->access$500(Lcom/baidu/bulletin/DataSyncer;)Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    move-result-object v5

    invoke-interface {v5, v1, v4}, Lcom/baidu/bulletin/DataSyncer$SyncObserver;->onSyncFinish(ZI)V

    .line 71
    iget-object v5, p0, Lcom/baidu/bulletin/DataSyncer$1;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #getter for: Lcom/baidu/bulletin/DataSyncer;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v5}, Lcom/baidu/bulletin/DataSyncer;->access$300(Lcom/baidu/bulletin/DataSyncer;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/bulletin/DataRepository;->channelVersion()Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->getCountToUpdate()I

    move-result v0

    .line 72
    .local v0, countToUpdate:I
    if-lez v0, :cond_3

    .line 73
    iget-object v5, p0, Lcom/baidu/bulletin/DataSyncer$1;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #getter for: Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;
    invoke-static {v5}, Lcom/baidu/bulletin/DataSyncer;->access$500(Lcom/baidu/bulletin/DataSyncer;)Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/baidu/bulletin/DataSyncer$SyncObserver;->onNewMessageNotified(I)V

    .line 75
    :cond_3
    iget-object v5, p0, Lcom/baidu/bulletin/DataSyncer$1;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #setter for: Lcom/baidu/bulletin/DataSyncer;->mIsDownloadMode:Z
    invoke-static {v5, v6}, Lcom/baidu/bulletin/DataSyncer;->access$602(Lcom/baidu/bulletin/DataSyncer;Z)Z

    goto :goto_0

    .end local v0           #countToUpdate:I
    .end local v1           #dataChanged:Z
    .end local v2           #metabolismChanged:Z
    .end local v3           #pageChanged:Z
    :cond_4
    move v2, v6

    .line 58
    goto :goto_1

    .restart local v2       #metabolismChanged:Z
    .restart local v3       #pageChanged:Z
    :cond_5
    move v1, v6

    .line 62
    goto :goto_2
.end method
