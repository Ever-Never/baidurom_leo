.class Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;
.super Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;
.source "PageAttachementDownloader.java"


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
    .line 136
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-direct {p0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveNativePage(Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;)V
    .locals 11
    .parameter "response"

    .prologue
    .line 139
    iget-object v8, p1, Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;->page:Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;

    if-eqz v8, :cond_3

    .line 141
    :try_start_0
    iget-object v6, p1, Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;->owner:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 142
    .local v6, owner:Lcom/baidu/bulletin/entity/ChannelItem;
    iget-object v7, p1, Lcom/baidu/bulletin/network/protocol/RawNativePage$Response;->page:Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;

    .line 143
    .local v7, page:Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;
    iget-object v2, v7, Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;->content:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    .line 145
    .local v2, entities:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    if-eqz v2, :cond_3

    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-virtual {v8}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->blacklist()Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;

    move-result-object v8

    invoke-virtual {v6}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v9

    #calls: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->exist(J)Z
    invoke-static {v8, v9, v10}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->access$000(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;J)Z

    move-result v8

    if-nez v8, :cond_3

    .line 146
    iget-object v8, v6, Lcom/baidu/bulletin/entity/ChannelItem;->sourceUrl:Ljava/lang/String;

    if-nez v8, :cond_0

    iget-object v8, v7, Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;->url:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 147
    iget-object v8, v7, Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;->url:Ljava/lang/String;

    iput-object v8, v6, Lcom/baidu/bulletin/entity/ChannelItem;->sourceUrl:Ljava/lang/String;

    .line 148
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v8}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$100(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/baidu/bulletin/DataRepository;->saveOrUpdate(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 150
    :cond_0
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v8}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$100(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/baidu/bulletin/DataRepository;->queryChannelDetails(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v6

    .line 151
    iget v8, v6, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    if-nez v8, :cond_3

    .line 152
    invoke-virtual {v6}, Lcom/baidu/bulletin/entity/ChannelItem;->getPage()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 154
    move-object v0, v2

    .local v0, arr$:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v0, v4

    .line 155
    .local v3, entity:Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    invoke-virtual {v6}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v8

    iput-wide v8, v3, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;->channelId:J

    .line 156
    invoke-virtual {v6, v3}, Lcom/baidu/bulletin/entity/ChannelItem;->addPageEntity(Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v3           #entity:Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    :cond_1
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v8}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$100(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/baidu/bulletin/DataRepository;->saveOrUpdate(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 162
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    const/4 v9, 0x1

    #setter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mSmartPreloadingImage:Z
    invoke-static {v8, v9}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$202(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;Z)Z

    .line 163
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #calls: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadImage([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)I
    invoke-static {v8, v2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$300(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)I

    .line 164
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    const/4 v9, 0x0

    #setter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mSmartPreloadingImage:Z
    invoke-static {v8, v9}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$202(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;Z)Z

    .line 166
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v8}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$100(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/baidu/bulletin/DataRepository;->saveDetail([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V

    .line 168
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    iget-object v8, v8, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    invoke-static {v8, v6}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->setResult(Lcom/baidu/bulletin/network/logic/DownloadObserver;Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 170
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    #calls: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadImageOrFinishDownloading([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V
    invoke-static {v8, v2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$400(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V

    .line 185
    .end local v0           #arr$:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .end local v2           #entities:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #owner:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v7           #page:Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;
    :goto_1
    return-void

    .line 173
    .restart local v2       #entities:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .restart local v6       #owner:Lcom/baidu/bulletin/entity/ChannelItem;
    .restart local v7       #page:Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;
    :cond_2
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-virtual {v6}, Lcom/baidu/bulletin/entity/ChannelItem;->getPage()Ljava/util/List;

    move-result-object v9

    #calls: Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadImageOrFinishDownloading(Ljava/util/List;)V
    invoke-static {v8, v9}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->access$500(Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    .end local v2           #entities:[Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;
    .end local v6           #owner:Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v7           #page:Lcom/baidu/bulletin/network/protocol/RawNativePage$Page;
    :catch_0
    move-exception v1

    .line 180
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    invoke-virtual {v8}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->downloadNext()V

    goto :goto_1
.end method
