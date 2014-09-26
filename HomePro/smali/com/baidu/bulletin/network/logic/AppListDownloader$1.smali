.class Lcom/baidu/bulletin/network/logic/AppListDownloader$1;
.super Ljava/lang/Object;
.source "AppListDownloader.java"

# interfaces
.implements Lcom/baidu/bulletin/network/FileDownloader$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/AppListDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/logic/AppListDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkAndCompleteList(J)V
    .locals 5
    .parameter "_id"

    .prologue
    .line 187
    :try_start_0
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v4}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$300(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/baidu/bulletin/DataRepository;->queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v3

    .line 188
    .local v3, item:Lcom/baidu/bulletin/entity/ChannelItem;
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v4}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$300(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/bulletin/DataRepository;->queryChannelDetails(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v3

    .line 189
    invoke-virtual {v3}, Lcom/baidu/bulletin/entity/ChannelItem;->getAppList()Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;

    .line 192
    .local v1, entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    invoke-virtual {v1}, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 193
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    iget-object v4, v4, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-static {v4, v3}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->setResult(Lcom/baidu/bulletin/network/logic/DownloadObserver;Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 205
    .end local v0           #entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;>;"
    .end local v1           #entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    :goto_0
    return-void

    .line 198
    .restart local v0       #entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_2
    const/4 v4, 0x1

    iput v4, v3, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    .line 199
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v4}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$300(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/bulletin/DataRepository;->saveOrUpdate(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 200
    invoke-static {v3}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->refresh(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 202
    iget-object v4, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    iget-object v4, v4, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-static {v4, v3}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->setResult(Lcom/baidu/bulletin/network/logic/DownloadObserver;Lcom/baidu/bulletin/entity/ChannelItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v0           #entities:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private tryToFinishAllEntities(J)V
    .locals 3
    .parameter "_id"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDownloadingEntities:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$000(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDownloadingEntities:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$000(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDownloadingEntities:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$000(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;

    iget-wide v1, v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->channelId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 183
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 172
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    .end local v0           #i:I
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->checkAndCompleteList(J)V

    .line 181
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    invoke-virtual {v1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadNext()V

    goto :goto_1
.end method


# virtual methods
.method public onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;

    .line 136
    .local v1, entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDownloadingEntities:Ljava/util/List;
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$000(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    .line 139
    .local v0, downloadPath:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mSmartPreloadingImage:Z
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$100(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    if-eqz v0, :cond_0

    .line 142
    iput-object v0, v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->download_icon:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #calls: Lcom/baidu/bulletin/network/logic/AppListDownloader;->udpateDetail(Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;)V
    invoke-static {v2, v1}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$200(Lcom/baidu/bulletin/network/logic/AppListDownloader;Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;)V

    .line 146
    :cond_0
    iget-wide v2, v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->channelId:J

    invoke-direct {p0, v2, v3}, Lcom/baidu/bulletin/network/logic/AppListDownloader$1;->tryToFinishAllEntities(J)V

    .line 161
    .end local v0           #downloadPath:Ljava/lang/String;
    .end local v1           #entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    :cond_1
    :goto_0
    return-void

    .line 149
    .restart local v0       #downloadPath:Ljava/lang/String;
    .restart local v1       #entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    :cond_2
    iget-object v2, v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->download_icon:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->download_icon:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    :cond_3
    iput-object v0, v1, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->download_icon:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v0           #downloadPath:Ljava/lang/String;
    .end local v1           #entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onDownloadFileProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter "fileitem"

    .prologue
    .line 165
    return-void
.end method
