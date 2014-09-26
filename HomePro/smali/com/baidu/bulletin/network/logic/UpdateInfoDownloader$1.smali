.class Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$1;
.super Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;
.source "UpdateInfoDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    invoke-direct {p0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveUpdateInfo(Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;)V
    .locals 9
    .parameter "response"

    .prologue
    .line 34
    iget-object v6, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;->versions:[Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mTaskCancelled:Z
    invoke-static {v6}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->access$000(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v4, updates:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;>;"
    iget-object v1, p1, Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;->versions:[Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;

    .local v1, arr$:[Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v1, v2

    .line 37
    .local v5, version:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    const/4 v0, 0x0

    .line 38
    .local v0, addedToList:Z
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/bulletin/DataRepository;->channelVersion()Lcom/baidu/bulletin/DataRepository$ChannelVersion;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/bulletin/DataRepository$ChannelVersion;->update(Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/bulletin/DataRepository;->checkFileInDatabase(Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    if-nez v0, :cond_1

    .line 44
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    .end local v0           #addedToList:Z
    .end local v5           #version:Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    :cond_2
    invoke-static {}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "channelInfoList size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v6, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    new-instance v7, Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    iget-object v8, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mChannelDownloaderObserver:Lcom/baidu/bulletin/network/logic/DownloadObserver;
    invoke-static {v8}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->access$300(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)Lcom/baidu/bulletin/network/logic/DownloadObserver;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/baidu/bulletin/network/logic/ChannelDownloader;-><init>(Lcom/baidu/bulletin/network/logic/DownloadObserver;)V

    #setter for: Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mChannelDownloader:Lcom/baidu/bulletin/network/logic/ChannelDownloader;
    invoke-static {v6, v7}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->access$202(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;Lcom/baidu/bulletin/network/logic/ChannelDownloader;)Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    .line 50
    iget-object v6, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->mChannelDownloader:Lcom/baidu/bulletin/network/logic/ChannelDownloader;
    invoke-static {v6}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->access$200(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->download(Ljava/util/List;)V

    .line 55
    .end local v1           #arr$:[Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #updates:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/network/protocol/RawUpdate$Version;>;"
    :goto_1
    return-void

    .line 54
    :cond_3
    iget-object v6, p0, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;

    #calls: Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->notifyOberver()V
    invoke-static {v6}, Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;->access$400(Lcom/baidu/bulletin/network/logic/UpdateInfoDownloader;)V

    goto :goto_1
.end method
