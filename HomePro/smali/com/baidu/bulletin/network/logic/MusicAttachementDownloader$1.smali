.class Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$1;
.super Ljava/lang/Object;
.source "MusicAttachementDownloader.java"

# interfaces
.implements Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadSongUrlFail(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 91
    invoke-static {}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadSongUrlFail >>>>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->downloadNext()V

    .line 93
    return-void
.end method

.method public onDownloadSongUrlFail(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 63
    invoke-static {}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadSongUrlFail >>>>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->downloadNext()V

    .line 65
    return-void
.end method

.method public onDownloadSongUrlSuccess(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "channel"
    .parameter "songurl"

    .prologue
    .line 71
    invoke-static {}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onDownloadSongUrlSuccess >>>>>"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/baidu/bulletin/network/FileDownloader$Request;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/FileDownloader$Request;-><init>()V

    .line 73
    .local v1, request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    iput-object p1, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->StreamingFileFlag:Z

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->MusciFileFlag:Z

    .line 76
    iget-object v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->songid:Ljava/lang/String;

    .line 77
    iput-object p2, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    .line 78
    iput-object p2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 80
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mMusicDownloader:Lcom/baidu/bulletin/network/FileDownloader;
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->access$200(Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;)Lcom/baidu/bulletin/network/FileDownloader;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mMusicFileObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->access$100(Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/bulletin/network/FileDownloader;->downloadFile(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    .line 86
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDownloadSongUrlSuccess(Lcom/baidu/bulletin/entity/ChannelItem;Ljava/lang/String;)V
    .locals 4
    .parameter "channel"
    .parameter "songurl"

    .prologue
    .line 45
    invoke-static {}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onDownloadSongUrlSuccess >>>>>"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/baidu/bulletin/network/FileDownloader$Request;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/FileDownloader$Request;-><init>()V

    .line 47
    .local v1, request:Lcom/baidu/bulletin/network/FileDownloader$Request;
    iput-object p1, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->obj:Ljava/lang/Object;

    .line 48
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->StreamingFileFlag:Z

    .line 49
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->MusciFileFlag:Z

    .line 50
    iget-object v2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->content:Ljava/lang/String;

    iput-object v2, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->songid:Ljava/lang/String;

    .line 51
    iput-object p2, v1, Lcom/baidu/bulletin/network/FileDownloader$Request;->downloadUrl:Ljava/lang/String;

    .line 52
    iput-object p2, p1, Lcom/baidu/bulletin/entity/ChannelItem;->sourceUrl:Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/baidu/bulletin/DataRepository;->saveOrUpdate(Lcom/baidu/bulletin/entity/ChannelItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mMusicDownloader:Lcom/baidu/bulletin/network/FileDownloader;
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->access$200(Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;)Lcom/baidu/bulletin/network/FileDownloader;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->mMusicFileObserver:Lcom/baidu/bulletin/network/FileDownloader$Observer;
    invoke-static {v3}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->access$100(Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;)Lcom/baidu/bulletin/network/FileDownloader$Observer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/baidu/bulletin/network/FileDownloader;->downloadFile(Lcom/baidu/bulletin/network/FileDownloader$Request;Lcom/baidu/bulletin/network/FileDownloader$Observer;)V

    .line 59
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
