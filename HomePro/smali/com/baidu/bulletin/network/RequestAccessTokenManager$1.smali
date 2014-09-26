.class Lcom/baidu/bulletin/network/RequestAccessTokenManager$1;
.super Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;
.source "RequestAccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/RequestAccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/RequestAccessTokenManager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/RequestAccessTokenManager;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$1;->this$0:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    invoke-direct {p0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public receiveTokenSonginfo(Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 43
    iget-object v0, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;->songItem:Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$1;->this$0:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    iget-object v1, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;->songItem:Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;

    iget-object v1, v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;->file_link:Ljava/lang/String;

    #calls: Lcom/baidu/bulletin/network/RequestAccessTokenManager;->isAvailable(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->access$000(Lcom/baidu/bulletin/network/RequestAccessTokenManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request Songinfo success, song url is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;->songItem:Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;

    iget-object v2, v2, Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;->file_link:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$1;->this$0:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    #getter for: Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mTokenObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;
    invoke-static {v0}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->access$200(Lcom/baidu/bulletin/network/RequestAccessTokenManager;)Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;->channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v2, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;->songItem:Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;

    iget-object v2, v2, Lcom/baidu/bulletin/network/RequestAccessTokenManager$SongItem;->file_link:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;->onDownloadSongUrlSuccess(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request Songinfo fail"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$1;->this$0:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    #getter for: Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mTokenObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;
    invoke-static {v0}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->access$200(Lcom/baidu/bulletin/network/RequestAccessTokenManager;)Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$ResponseSong;->channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;->onDownloadSongUrlFail(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    goto :goto_0
.end method

.method public receiveTokenText(Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 28
    iget-object v0, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;->item:Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$1;->this$0:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    iget-object v1, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;->item:Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;

    iget-object v1, v1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;->access_token:Ljava/lang/String;

    #calls: Lcom/baidu/bulletin/network/RequestAccessTokenManager;->isAvailable(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->access$000(Lcom/baidu/bulletin/network/RequestAccessTokenManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request token success, token is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;->item:Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;

    iget-object v2, v2, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Item;->access_token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$1;->this$0:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->downloadSongInfo(Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;)V

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "request token error"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/baidu/bulletin/network/RequestAccessTokenManager$1;->this$0:Lcom/baidu/bulletin/network/RequestAccessTokenManager;

    #getter for: Lcom/baidu/bulletin/network/RequestAccessTokenManager;->mTokenObserver:Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;
    invoke-static {v0}, Lcom/baidu/bulletin/network/RequestAccessTokenManager;->access$200(Lcom/baidu/bulletin/network/RequestAccessTokenManager;)Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;

    move-result-object v0

    iget-object v1, p1, Lcom/baidu/bulletin/network/RequestAccessTokenManager$Response;->channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-interface {v0, v1}, Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;->onDownloadSongUrlFail(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    goto :goto_0
.end method
