.class Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;
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
    name = "AutoSyncChannelItemsCallback"
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
    .line 380
    iput-object p1, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput p2, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;->mIndex:I

    .line 382
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
    .line 387
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    if-eqz p1, :cond_1

    .line 388
    iget-object v3, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    #getter for: Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllChannelItemInfos:Ljava/util/List;
    invoke-static {v3}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->access$200(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 391
    .local v0, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    #getter for: Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImages:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->access$300(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;)Ljava/util/Hashtable;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 395
    iget-object v3, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    #getter for: Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->mAllImages:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->access$300(Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;)Ljava/util/Hashtable;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 404
    .end local v0           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    const/4 v4, 0x2

    iget v5, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 405
    .local v2, message:Landroid/os/Message;
    iget-object v3, p0, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler$AutoSyncChannelItemsCallback;->this$0:Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;

    invoke-virtual {v3, v2}, Lcom/baidu/bulletin/autosync/AutoSyncer$SyncBackgroudnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 407
    return-void
.end method
