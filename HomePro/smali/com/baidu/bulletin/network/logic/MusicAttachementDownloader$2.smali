.class Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$2;
.super Ljava/lang/Object;
.source "MusicAttachementDownloader.java"

# interfaces
.implements Lcom/baidu/bulletin/network/FileDownloader$Observer;


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
    .line 96
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 99
    iget-object v0, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    .line 110
    .local v0, downloadPath:Ljava/lang/String;
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 111
    .local v1, item:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v2

    iget-wide v3, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-virtual {v2, v3, v4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryChannelItem(J)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v1

    .line 114
    iput-object v0, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader$2;->this$0:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    invoke-virtual {v2}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->downloadNext()V

    .line 119
    return-void

    .line 116
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onDownloadFileProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter "fileitem"

    .prologue
    .line 124
    return-void
.end method
