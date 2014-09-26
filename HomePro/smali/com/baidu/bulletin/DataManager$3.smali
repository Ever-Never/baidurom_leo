.class Lcom/baidu/bulletin/DataManager$3;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/DataManager;->requestNewChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/DataManager;

.field final synthetic val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

.field final synthetic val$maxCount:I

.field final synthetic val$topic:I


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/DataManager;IILcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    iput p2, p0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    iput p3, p0, Lcom/baidu/bulletin/DataManager$3;->val$maxCount:I

    iput-object p4, p0, Lcom/baidu/bulletin/DataManager$3;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelItemsCallback(Ljava/util/List;I)V
    .locals 17
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
    .line 310
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    if-nez p2, :cond_5

    .line 311
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    const/16 v2, 0xfa0

    if-eq v1, v2, :cond_0

    .line 312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    move-object/from16 v0, p1

    #calls: Lcom/baidu/bulletin/DataManager;->checkUpdateMessageCount(ILjava/util/List;)V
    invoke-static {v1, v2, v0}, Lcom/baidu/bulletin/DataManager;->access$000(Lcom/baidu/bulletin/DataManager;ILjava/util/List;)V

    .line 315
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItemCountEqualMore(IJ)I

    move-result v1

    invoke-static {}, Lcom/baidu/bulletin/DataManager;->access$200()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    invoke-interface {v1, v2}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChanelItemMinVersion(I)J

    move-result-wide v14

    .line 321
    .local v14, minVersion:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    invoke-static {}, Lcom/baidu/bulletin/DataManager;->access$300()I

    move-result v3

    invoke-interface {v1, v2, v14, v15, v3}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->deleteChannelItemEqualMore(IJI)V

    .line 326
    .end local v14           #minVersion:J
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    const/16 v2, 0xfa0

    if-ne v1, v2, :cond_3

    if-eqz p1, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItem(IJII)Ljava/util/List;

    move-result-object v11

    .line 332
    .local v11, historyChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    if-eqz v11, :cond_2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 335
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 337
    .local v10, historyChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v1, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    iput-wide v1, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    invoke-interface {v1, v10}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->updateChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 352
    .end local v10           #historyChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v11           #historyChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    const/16 v2, 0xbb8

    if-lt v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    const/16 v2, 0xfa0

    if-ge v1, v2, :cond_4

    if-eqz p1, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 354
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 355
    .local v7, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    iget v2, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    iget-wide v3, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    invoke-interface {v1, v2, v3, v4}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItemByVersion(IJ)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v16

    .line 360
    .local v16, savedItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    new-instance v8, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    invoke-direct {v8}, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;-><init>()V

    .line 361
    .local v8, detailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    move-object/from16 v0, v16

    iget-wide v1, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    iput-wide v1, v8, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->channelItemId:J

    .line 362
    const/4 v1, 0x1

    iput v1, v8, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->type:I

    .line 363
    new-instance v1, Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v2, 0x4

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>(ILjava/lang/String;)V

    iput-object v1, v8, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    invoke-interface {v1, v8}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->saveNewsDetail(Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 377
    .end local v7           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v8           #detailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v16           #savedItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :catch_0
    move-exception v9

    .line 379
    .local v9, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v9}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-interface {v1, v2, v3}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    .line 399
    .end local v9           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :goto_2
    return-void

    .line 344
    .restart local v11       #historyChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v2

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v2, v1}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->saveChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    goto/16 :goto_0

    .line 348
    .end local v11           #historyChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->saveChannelItem(Ljava/util/List;)V

    goto/16 :goto_0

    .line 371
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/bulletin/DataManager$3;->val$maxCount:I

    invoke-interface {v1, v2, v3}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItemTopVersion(II)Ljava/util/List;

    move-result-object v13

    .line 374
    .local v13, mChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v13, v2}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_1
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 386
    .end local v13           #mChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/bulletin/DataManager$3;->val$topic:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/bulletin/DataManager$3;->val$maxCount:I

    invoke-interface {v1, v2, v3}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryChannelItemTopVersion(II)Ljava/util/List;

    move-result-object v13

    .line 389
    .restart local v13       #mChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    move/from16 v0, p2

    invoke-interface {v1, v13, v0}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_2
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 392
    .end local v13           #mChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :catch_1
    move-exception v9

    .line 394
    .restart local v9       #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v9}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    .line 395
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/DataManager$3;->val$callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    invoke-interface {v1, v2, v3}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_2
.end method
