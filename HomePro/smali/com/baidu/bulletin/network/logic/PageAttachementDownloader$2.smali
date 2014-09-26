.class Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;
.super Ljava/lang/Object;
.source "PageAttachementDownloader.java"

# interfaces
.implements Lcom/baidu/bulletin/network/FileDownloader$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private tryToFinishAllEntities(J)V
    .locals 3
    .parameter "_id"

    .prologue
    .line 212
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDownloadingEntities:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$600(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDownloadingEntities:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$600(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    iget-wide v1, v1, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->channelId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 221
    :goto_1
    return-void

    .line 212
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #calls: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->checkAndCompletePage(J)V
    invoke-static {v1, p1, p2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$700(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;J)V

    .line 220
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-virtual {v1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadNext()V

    goto :goto_1
.end method


# virtual methods
.method public onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 192
    :try_start_0
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    .line 193
    .local v1, entity:Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDownloadingEntities:Ljava/util/List;
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$600(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 195
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mSmartPreloadingImage:Z
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$200(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 196
    iget-object v0, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    .line 197
    .local v0, downloadPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-virtual {v2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->blacklist()Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;

    move-result-object v2

    iget-wide v3, v1, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->channelId:J

    #calls: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->exist(J)Z
    invoke-static {v2, v3, v4}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->access$000(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 198
    iput-object v0, v1, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->data:Ljava/lang/String;

    .line 199
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$100(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/bulletin/DataRepository;->updateDetail(Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V

    .line 202
    :cond_0
    iget-wide v2, v1, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->channelId:J

    invoke-direct {p0, v2, v3}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$2;->tryToFinishAllEntities(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0           #downloadPath:Ljava/lang/String;
    .end local v1           #entity:Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    :cond_1
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onDownloadFileProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter "fileitem"

    .prologue
    .line 209
    return-void
.end method
