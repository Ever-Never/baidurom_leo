.class Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncNetworkChannelItemsCallback;
.super Ljava/lang/Object;
.source "AutoSyncer.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoSyncNetworkChannelItemsCallback"
.end annotation


# instance fields
.field private mIndex:I

.field final synthetic this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncNetworkChannelItemsCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    iput p2, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncNetworkChannelItemsCallback;->mIndex:I

    .line 416
    return-void
.end method


# virtual methods
.method public onChannelItemsCallback(Ljava/util/List;I)V
    .locals 6
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
    .line 421
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 423
    const-string v3, "SyncBackgroudnHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoSyncNetworkChannelItemsCallback: BEGIN size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 425
    .local v0, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const-string v3, "SyncBackgroudnHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channelImemInfo title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    .end local v0           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    iget-object v3, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncNetworkChannelItemsCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    #getter for: Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mSubscirbTopicList:Ljava/util/List;
    invoke-static {v3}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->access$400(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncNetworkChannelItemsCallback;->mIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 430
    .local v2, updateTopicId:I
    const-string v3, "SyncBackgroudnHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateTopicId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const-string v3, "SyncBackgroudnHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoSyncNetworkChannelItemsCallback: END size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v3, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncNetworkChannelItemsCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    #getter for: Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mUpdateTopicList:Ljava/util/List;
    invoke-static {v3}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->access$500(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #updateTopicId:I
    :cond_1
    return-void
.end method
