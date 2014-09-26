.class public Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;
.super Ljava/lang/Object;
.source "AppListDownloader.java"

# interfaces
.implements Lcom/baidu/bulletin/network/protocol/IProtocolPakager$IObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/AppListDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppProtocolPackagerObserver"
.end annotation


# instance fields
.field private mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/network/logic/AppListDownloader;Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 0
    .parameter
    .parameter "channelItem"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 215
    return-void
.end method


# virtual methods
.method public varargs onReceive([B[Ljava/lang/Object;)V
    .locals 11
    .parameter "buffer"
    .parameter "arg"

    .prologue
    .line 221
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v5, p1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 223
    .local v5, json:Ljava/lang/String;
    const-string v8, "AppListDownloader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "app list json = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-class v8, Lcom/baidu/bulletin/network/protocol/RawAppList$Page;

    invoke-static {v5, v8}, Lcom/baidu/bulletin/utils/JsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/baidu/bulletin/network/protocol/RawAppList$Page;

    .line 226
    .local v7, page:Lcom/baidu/bulletin/network/protocol/RawAppList$Page;
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v8}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$300(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v8

    iget-object v9, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v8, v9}, Lcom/baidu/bulletin/DataRepository;->queryChannelDetails(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v8

    iput-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 228
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    iget v8, v8, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    if-nez v8, :cond_1

    .line 229
    iget-object v0, v7, Lcom/baidu/bulletin/network/protocol/RawAppList$Page;->content:[Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;

    .local v0, arr$:[Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v4, v0, v3

    .line 230
    .local v4, item:Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;
    new-instance v2, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;

    invoke-direct {v2}, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;-><init>()V

    .line 231
    .local v2, entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    iget-object v8, v4, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->allDownload:Ljava/lang/String;

    iput-object v8, v2, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->all_download:Ljava/lang/String;

    .line 232
    iget-object v8, v4, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->downloadUrl:Ljava/lang/String;

    iput-object v8, v2, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->downloadUrl:Ljava/lang/String;

    .line 234
    invoke-virtual {v2, v4}, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->setSuitableIcon(Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;)V

    .line 236
    iget-object v8, v4, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->packagename:Ljava/lang/String;

    iput-object v8, v2, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->pakageName:Ljava/lang/String;

    .line 237
    iget-object v8, v4, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->score:Ljava/lang/String;

    iput-object v8, v2, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->score:Ljava/lang/String;

    .line 238
    iget-object v8, v4, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->size:Ljava/lang/String;

    iput-object v8, v2, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->size:Ljava/lang/String;

    .line 239
    iget-object v8, v4, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->sname:Ljava/lang/String;

    iput-object v8, v2, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->sname:Ljava/lang/String;

    .line 240
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v8}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->channelId:J

    .line 242
    iget-object v8, v4, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->docid:Ljava/lang/String;

    iput-object v8, v2, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->docid:Ljava/lang/String;

    .line 243
    iget v8, v4, Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;->refapptopicid:I

    iput v8, v2, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;->refapptopicid:I

    .line 245
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v8, v2}, Lcom/baidu/bulletin/entity/ChannelItem;->addAppListEntitiy(Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;)V

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v2           #entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    .end local v4           #item:Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;
    :cond_0
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    const/4 v9, 0x1

    #setter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mSmartPreloadingImage:Z
    invoke-static {v8, v9}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$102(Lcom/baidu/bulletin/network/logic/AppListDownloader;Z)Z

    .line 256
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    iget-object v9, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    #calls: Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadImage(Lcom/baidu/bulletin/entity/ChannelItem;)I
    invoke-static {v8, v9}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$400(Lcom/baidu/bulletin/network/logic/AppListDownloader;Lcom/baidu/bulletin/entity/ChannelItem;)I

    .line 257
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    const/4 v9, 0x0

    #setter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mSmartPreloadingImage:Z
    invoke-static {v8, v9}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$102(Lcom/baidu/bulletin/network/logic/AppListDownloader;Z)Z

    .line 259
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/AppListDownloader;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v8}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$300(Lcom/baidu/bulletin/network/logic/AppListDownloader;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v8

    iget-object v9, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v9}, Lcom/baidu/bulletin/entity/ChannelItem;->getAppList()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/bulletin/DataRepository;->saveDetail(Ljava/util/List;)V

    .line 261
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    iget-object v8, v8, Lcom/baidu/bulletin/network/logic/AppListDownloader;->mObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;

    iget-object v9, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-static {v8, v9}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->setResult(Lcom/baidu/bulletin/network/logic/DownloadObserver;Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 263
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    iget-object v9, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->mChannelItem:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v9}, Lcom/baidu/bulletin/entity/ChannelItem;->getAppList()Ljava/util/List;

    move-result-object v9

    #calls: Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadImageOrFinishDownloading(Ljava/util/List;)V
    invoke-static {v8, v9}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->access$500(Lcom/baidu/bulletin/network/logic/AppListDownloader;Ljava/util/List;)V

    .line 273
    .end local v0           #arr$:[Lcom/baidu/bulletin/network/protocol/RawAppList$ContentItem;
    .end local v3           #i$:I
    .end local v5           #json:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #page:Lcom/baidu/bulletin/network/protocol/RawAppList$Page;
    :goto_1
    return-void

    .line 265
    .restart local v5       #json:Ljava/lang/String;
    .restart local v7       #page:Lcom/baidu/bulletin/network/protocol/RawAppList$Page;
    :cond_1
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    invoke-virtual {v8}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadNext()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 268
    .end local v5           #json:Ljava/lang/String;
    .end local v7           #page:Lcom/baidu/bulletin/network/protocol/RawAppList$Page;
    :catch_0
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/AppListDownloader$AppProtocolPackagerObserver;->this$0:Lcom/baidu/bulletin/network/logic/AppListDownloader;

    invoke-virtual {v8}, Lcom/baidu/bulletin/network/logic/AppListDownloader;->downloadNext()V

    goto :goto_1
.end method
