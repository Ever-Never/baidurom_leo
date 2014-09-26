.class Lcom/baidu/bulletin/DataManager$4;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/DataManager;->requestOldChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/DataManager;

.field final synthetic val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

.field final synthetic val$maxCount:I

.field final synthetic val$minVersion:J

.field final synthetic val$topic:I


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/DataManager;Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IJI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    iput-object p1, p0, Lcom/baidu/bulletin/DataManager$4;->this$0:Lcom/baidu/bulletin/DataManager;

    iput-object p2, p0, Lcom/baidu/bulletin/DataManager$4;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    iput p3, p0, Lcom/baidu/bulletin/DataManager$4;->val$topic:I

    iput-wide p4, p0, Lcom/baidu/bulletin/DataManager$4;->val$minVersion:J

    iput p6, p0, Lcom/baidu/bulletin/DataManager$4;->val$maxCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelItemsCallback(Ljava/util/List;I)V
    .locals 13
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/16 v2, 0xfa0

    const/16 v12, 0x7d0

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 488
    if-nez p2, :cond_4

    .line 491
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager$4;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    .line 545
    :goto_0
    return-void

    .line 499
    :cond_1
    iget v0, p0, Lcom/baidu/bulletin/DataManager$4;->val$topic:I

    if-lt v0, v12, :cond_2

    iget v0, p0, Lcom/baidu/bulletin/DataManager$4;->val$topic:I

    if-ge v0, v2, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 502
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager$4;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v8

    .line 538
    .local v8, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v8}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    .line 539
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager$4;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    invoke-interface {v0, v11, v12}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_0

    .line 508
    .end local v8           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager$4;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v0}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->saveChannelItem(Ljava/util/List;)V

    .line 511
    iget v0, p0, Lcom/baidu/bulletin/DataManager$4;->val$topic:I

    const/16 v1, 0xbb8

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/baidu/bulletin/DataManager$4;->val$topic:I

    if-ge v0, v2, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 516
    .local v6, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager$4;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v0}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v0

    iget v1, v6, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    iget-wide v2, v6, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    invoke-interface {v0, v1, v2, v3}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItemByVersion(IJ)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v10

    .line 521
    .local v10, savedItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    new-instance v7, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    invoke-direct {v7}, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;-><init>()V

    .line 522
    .local v7, detailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    iget-wide v0, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    iput-wide v0, v7, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->channelItemId:J

    .line 523
    const/4 v0, 0x1

    iput v0, v7, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->type:I

    .line 524
    new-instance v0, Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v1, 0x4

    iget-object v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v0, v7, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 527
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager$4;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v0}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->saveNewsDetail(Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V

    goto :goto_1

    .line 531
    .end local v6           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v7           #detailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #savedItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_3
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager$4;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v0}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v0

    iget v1, p0, Lcom/baidu/bulletin/DataManager$4;->val$topic:I

    iget-wide v2, p0, Lcom/baidu/bulletin/DataManager$4;->val$minVersion:J

    iget v4, p0, Lcom/baidu/bulletin/DataManager$4;->val$maxCount:I

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItem(IJII)Ljava/util/List;

    move-result-object p1

    .line 534
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager$4;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_1
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 543
    :cond_4
    iget-object v0, p0, Lcom/baidu/bulletin/DataManager$4;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    invoke-interface {v0, v11, p2}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto/16 :goto_0
.end method
