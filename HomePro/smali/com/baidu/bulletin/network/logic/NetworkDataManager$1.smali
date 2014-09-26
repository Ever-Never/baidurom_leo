.class Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;
.super Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;
.source "NetworkDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/NetworkDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    invoke-direct {p0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized receiveAppListDetail(Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 231
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v2, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 234
    new-instance v1, Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-wide v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->channelItemId:J

    iget-object v5, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;

    aget-object v5, v5, v0

    invoke-direct {v1, v3, v4, v5}, Lcom/baidu/bulletin/db/entity/AppDetailInfo;-><init>(JLcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;)V

    .line 235
    .local v1, itemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v3, "NetworkDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveAppDetail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    .end local v1           #itemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    :cond_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    if-eqz v3, :cond_1

    .line 239
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/baidu/bulletin/RequestCallback$ApplistCallback;->onApplistCallback(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v0           #i:I
    .end local v2           #itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 242
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 243
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    if-eqz v3, :cond_1

    .line 244
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ApplistCallback;->onApplistCallback(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 231
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 246
    :cond_3
    if-eqz p1, :cond_1

    :try_start_2
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawAppDetail$RawAppDetailItems;

    if-nez v3, :cond_1

    .line 247
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ApplistCallback;->onApplistCallback(Ljava/util/List;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized receiveAppsChannel(Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 99
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->appsChannelItem:Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->appsChannelItem:Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;->apptopics:[Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v2, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->appsChannelItem:Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;->apptopics:[Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 103
    new-instance v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->topic:I

    iget-object v4, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->appsChannelItem:Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

    iget-object v4, v4, Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;->apptopics:[Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;

    aget-object v4, v4, v0

    invoke-direct {v1, v3, v4}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;-><init>(ILcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;)V

    .line 105
    .local v1, itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-string v3, "NetworkDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveAppsChannel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v1           #itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v0           #i:I
    .end local v2           #itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 111
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 113
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 115
    :cond_3
    if-eqz p1, :cond_4

    :try_start_2
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->appsChannelItem:Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

    if-nez v3, :cond_4

    .line 116
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 117
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_1

    .line 119
    :cond_4
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->appsChannelItem:Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->appsChannelItem:Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawAppChannel$RawAppsChannleItem;->apptopics:[Lcom/baidu/bulletin/network/protocol/RawAppChannel$AppsChannelItem;

    if-nez v3, :cond_1

    .line 121
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 122
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawAppChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized receiveBulletinOpChannel(Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 282
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->item:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->item:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;->operations:[Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v2, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->item:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;->operations:[Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 286
    new-instance v1, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->item:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;->operations:[Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;

    aget-object v3, v3, v0

    invoke-direct {v1, v3}, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;-><init>(Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;)V

    .line 287
    .local v1, itemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const-string v3, "NetworkDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveBulletinOpChannel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    .end local v1           #itemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;
    :cond_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;->onBulletinOpInfoCallback(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v0           #i:I
    .end local v2           #itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 294
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 295
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    if-eqz v3, :cond_1

    .line 296
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;->onBulletinOpInfoCallback(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 282
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 298
    :cond_3
    if-eqz p1, :cond_5

    :try_start_2
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->item:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;

    if-nez v3, :cond_5

    .line 299
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    if-eqz v3, :cond_4

    .line 300
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;->onBulletinOpInfoCallback(Ljava/util/List;I)V

    .line 302
    :cond_4
    const-string v3, "NetworkDataManager"

    const-string v4, "response NO_CONTENT"

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_5
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->item:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->item:Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$RawBulletinOpChannelItem;->operations:[Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$BulletinOpChannelItem;

    if-nez v3, :cond_1

    .line 305
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    if-eqz v3, :cond_6

    .line 306
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawBulletinOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;->onBulletinOpInfoCallback(Ljava/util/List;I)V

    .line 308
    :cond_6
    const-string v3, "NetworkDataManager"

    const-string v4, "response operations NO_CONTENT"

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized receiveHistoryChannel(Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 152
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->historyTodayItem:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v2, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->historyTodayItem:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 155
    new-instance v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->topic:I

    iget-object v4, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->historyTodayItem:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    aget-object v4, v4, v0

    invoke-direct {v1, v3, v4}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;-><init>(ILcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;)V

    .line 157
    .local v1, itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v3, "NetworkDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveHistoryChannel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v1           #itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 161
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .end local v0           #i:I
    .end local v2           #itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 163
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 152
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 167
    :cond_3
    if-eqz p1, :cond_1

    :try_start_2
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->historyTodayItem:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem;

    if-nez v3, :cond_1

    .line 168
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawHistoryChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized receiveImageChannel(Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 176
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->imageChannelItem:Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->imageChannelItem:Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;->pictures:[Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v2, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->imageChannelItem:Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;->pictures:[Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 180
    new-instance v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->imageChannelItem:Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    iget v3, v3, Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;->topic:I

    iget-object v4, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->imageChannelItem:Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    iget-object v4, v4, Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;->pictures:[Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;

    aget-object v4, v4, v0

    invoke-direct {v1, v3, v4}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;-><init>(ILcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;)V

    .line 182
    .local v1, itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const-string v3, "NetworkDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveImageChannel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v1           #itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 186
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local v0           #i:I
    .end local v2           #itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 188
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 189
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 190
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 176
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 192
    :cond_3
    if-eqz p1, :cond_4

    :try_start_2
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->imageChannelItem:Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    if-nez v3, :cond_4

    .line 193
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 194
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_1

    .line 196
    :cond_4
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->imageChannelItem:Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->imageChannelItem:Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawImageChannel$RawImageChannelItem;->pictures:[Lcom/baidu/bulletin/network/protocol/RawImageChannel$ImageChannelItem;

    if-nez v3, :cond_1

    .line 198
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 199
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawImageChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized receiveMusicChannel(Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 129
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 132
    new-instance v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v3, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->topic:I

    iget-object v4, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;

    aget-object v4, v4, v0

    invoke-direct {v1, v3, v4}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;-><init>(ILcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;)V

    .line 134
    .local v1, itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const-string v3, "NetworkDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveMusicChannel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v1           #itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 138
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v0           #i:I
    .end local v2           #itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 140
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 129
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 144
    :cond_3
    if-eqz p1, :cond_1

    :try_start_2
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawMusicChannel$RawMusicChannelItem;

    if-nez v3, :cond_1

    .line 145
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawMusicChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized receiveNewsChannel(Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 69
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->newsChannelItem:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->newsChannelItem:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;->news:[Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->newsChannelItem:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;->news:[Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 73
    new-instance v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->newsChannelItem:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    iget v3, v3, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;->topic:I

    iget-object v4, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->newsChannelItem:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    iget-object v4, v4, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;->news:[Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;

    aget-object v4, v4, v0

    invoke-direct {v1, v3, v4}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;-><init>(ILcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;)V

    .line 75
    .local v1, itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v3, "NetworkDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveNewsChannel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v1           #itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .end local v0           #i:I
    .end local v2           #itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 81
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 83
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 85
    :cond_3
    if-eqz p1, :cond_4

    :try_start_2
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->newsChannelItem:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    if-nez v3, :cond_4

    .line 86
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 87
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V

    goto :goto_1

    .line 89
    :cond_4
    if-eqz p1, :cond_1

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->newsChannelItem:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->newsChannelItem:Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;

    iget-object v3, v3, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$RawNewsChannelItem;->news:[Lcom/baidu/bulletin/network/protocol/RawNewsChannel$NewsChannelItem;

    if-nez v3, :cond_1

    .line 91
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized receiveNewsDetail(Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 207
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v2, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 210
    new-instance v1, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-wide v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->newsId:J

    iget-object v5, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;

    aget-object v5, v5, v0

    invoke-direct {v1, v3, v4, v5}, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;-><init>(JLcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;)V

    .line 211
    .local v1, itemInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v3, "NetworkDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveNewsDetail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v1           #itemInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :cond_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;->onNewsDetailCallback(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    .end local v0           #i:I
    .end local v2           #itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 218
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 219
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    if-eqz v3, :cond_1

    .line 220
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;->onNewsDetailCallback(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 207
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 222
    :cond_3
    if-eqz p1, :cond_1

    :try_start_2
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->content:[Lcom/baidu/bulletin/network/protocol/RawNewsDetail$RawDetailItems;

    if-nez v3, :cond_1

    .line 223
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;->callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;->onNewsDetailCallback(Ljava/util/List;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized receiveOpChannel(Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 257
    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v2, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 260
    new-instance v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->opTopic:Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;

    iget-object v4, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;

    aget-object v4, v4, v0

    invoke-direct {v1, v3, v4}, Lcom/baidu/bulletin/db/entity/OpItemInfo;-><init>(Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpTopic;Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;)V

    .line 261
    .local v1, itemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    const-string v3, "NetworkDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiveOpChannel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/entity/OpItemInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v1           #itemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;
    :cond_0
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;->onOpInfoCallback(Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v0           #i:I
    .end local v2           #itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 268
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/NetworkDataManager$1;->this$0:Lcom/baidu/bulletin/network/logic/NetworkDataManager;

    #getter for: Lcom/baidu/bulletin/network/logic/NetworkDataManager;->mTaskCancelled:Z
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/NetworkDataManager;->access$000(Lcom/baidu/bulletin/network/logic/NetworkDataManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    if-eqz v3, :cond_1

    .line 270
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3e9

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;->onOpInfoCallback(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 257
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 272
    :cond_3
    if-eqz p1, :cond_1

    :try_start_2
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawOpChannel$RawOpChannelItem;

    if-nez v3, :cond_1

    .line 273
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    if-eqz v3, :cond_1

    .line 274
    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawOpChannel$Response;->callback:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    const/4 v4, 0x0

    const/16 v5, 0x3ea

    invoke-interface {v3, v4, v5}, Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;->onOpInfoCallback(Ljava/util/List;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
