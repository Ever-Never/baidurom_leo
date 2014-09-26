.class Lcom/baidu/bulletin/network/logic/ChannelDownloader$1;
.super Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;
.source "ChannelDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/ChannelDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/ChannelDownloader;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    invoke-direct {p0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized receiveChannelContent(Lcom/baidu/bulletin/network/protocol/RawChannel$Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mTaskCancelled:Z
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->access$000(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 58
    :try_start_1
    iget-object v2, p1, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    array-length v2, v2

    new-array v1, v2, [Lcom/baidu/bulletin/entity/ChannelItem;

    .line 59
    .local v1, items:[Lcom/baidu/bulletin/entity/ChannelItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p1, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 60
    new-instance v2, Lcom/baidu/bulletin/entity/ChannelItem;

    iget-object v3, p1, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/baidu/bulletin/network/protocol/RawChannel$Response;->items:[Lcom/baidu/bulletin/network/protocol/RawChannelItem;

    aget-object v4, v4, v0

    invoke-direct {v2, v3, v4}, Lcom/baidu/bulletin/entity/ChannelItem;-><init>(Ljava/lang/String;Lcom/baidu/bulletin/network/protocol/RawChannelItem;)V

    aput-object v2, v1, v0

    .line 61
    invoke-static {}, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download image item : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v4}, Lcom/baidu/bulletin/entity/ChannelItem;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/bulletin/DataRepository;->save([Lcom/baidu/bulletin/entity/ChannelItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .end local v0           #i:I
    .end local v1           #items:[Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->access$210(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)I

    .line 68
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    #calls: Lcom/baidu/bulletin/network/logic/ChannelDownloader;->notifyObserverIfNoMore()V
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->access$300(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 64
    :catch_0
    move-exception v2

    goto :goto_1
.end method
