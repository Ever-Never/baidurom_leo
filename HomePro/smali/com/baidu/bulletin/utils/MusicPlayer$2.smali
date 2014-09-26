.class Lcom/baidu/bulletin/utils/MusicPlayer$2;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/utils/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadSongUrlFail(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 4
    .parameter "channel"

    .prologue
    const/4 v3, 0x0

    .line 196
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 197
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDownloadSongUrlFail >>>>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCalledOnce:Z
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1600(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v0

    .line 199
    .local v0, cancelled:Z
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    const/4 v2, 0x1

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCallbacked:Z
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1102(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 200
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenCallbacked:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->setState(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$100(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V

    .line 201
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenSent:Z
    invoke-static {v1, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1502(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 202
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadcalled:Z
    invoke-static {v1, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$302(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 203
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Stopped:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$1700(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    .line 206
    if-nez v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->AcquireMusicUrlError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->setToastState(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$1800(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->setProgressBar(I)V
    invoke-static {v1, v3}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$1900(Lcom/baidu/bulletin/utils/MusicPlayer;I)V

    .line 210
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->cancelStatusBar()V
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$2000(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    .line 215
    .end local v0           #cancelled:Z
    :cond_1
    :goto_0
    return-void

    .line 212
    .restart local v0       #cancelled:Z
    :cond_2
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->downloadNextAndremoveOthers()V
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$400(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    goto :goto_0
.end method

.method public onDownloadSongUrlFail(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 162
    return-void
.end method

.method public onDownloadSongUrlSuccess(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)V
    .locals 5
    .parameter "channel"
    .parameter "songurl"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCancelled:Z
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1000(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 170
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDownloadValidationSuccess >>>>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCallbacked:Z
    invoke-static {v1, v4}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1102(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 172
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenCallbacked:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->setState(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$100(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V

    .line 173
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->Filedownloadcalled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->setState(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$100(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V

    .line 174
    iput-object p2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 176
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mFileDownloader:Lcom/baidu/bulletin/network/FileDownloader;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$1400(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/network/FileDownloader;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->downloadRequest(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)Lcom/baidu/bulletin/network/FileDownloader$Request;
    invoke-static {v2, p1, p2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$1200(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)Lcom/baidu/bulletin/network/FileDownloader$Request;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mFileDownloadObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v3}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$1300(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bulletin/network/FileDownloader;->downloadFile(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    .line 191
    :cond_0
    :goto_1
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 182
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenCallbacked:Z
    invoke-static {v1, v4}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1102(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 183
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenCallbacked:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->setState(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V
    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$100(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V

    .line 184
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mRequestTokenSent:Z
    invoke-static {v1, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$1502(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 185
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadcalled:Z
    invoke-static {v1, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$302(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 186
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 187
    iget-object v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$2;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->downloadNextAndremoveOthers()V
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$400(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    goto :goto_1
.end method

.method public onDownloadSongUrlSuccess(Lcom/baidu/bulletin/entity/ChannelItem;Ljava/lang/String;)V
    .locals 0
    .parameter "channel"
    .parameter "songurl"

    .prologue
    .line 158
    return-void
.end method
