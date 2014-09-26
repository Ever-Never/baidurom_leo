.class Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;
.super Ljava/lang/Object;
.source "ItemBriefImageDownloaderByPage.java"

# interfaces
.implements Lcom/baidu/bulletin/network/FileDownloader$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 61
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    #getter for: Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDownloadCounter:I
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->access$000(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)I

    move-result v2

    if-lez v2, :cond_2

    .line 62
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/baidu/bulletin/entity/ChannelItem;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    #getter for: Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mTaskCancelled:Z
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->access$100(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    iget-object v1, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/baidu/bulletin/entity/ChannelItem;

    .line 66
    .local v1, item:Lcom/baidu/bulletin/entity/ChannelItem;
    :try_start_0
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    #getter for: Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mTaskCancelled:Z
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->access$100(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    #getter for: Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->access$200(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v2

    invoke-virtual {v1}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/bulletin/DataRepository;->queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v1

    .line 69
    :cond_0
    if-eqz v1, :cond_1

    .line 70
    iget-object v2, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/entity/ChannelItem;->setImage(Ljava/lang/String;)V

    .line 71
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    #getter for: Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mTaskCancelled:Z
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->access$100(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    #getter for: Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->mDataRepository:Lcom/baidu/bulletin/DataRepository;
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->access$200(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)Lcom/baidu/bulletin/DataRepository;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/bulletin/DataRepository;->saveOrUpdate(Lcom/baidu/bulletin/entity/ChannelItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v1           #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->access$010(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)I

    .line 81
    iget-object v2, p0, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;

    #calls: Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->notifyObserverIfNoMore()V
    invoke-static {v2}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->access$400(Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;)V

    .line 83
    :cond_2
    return-void

    .line 75
    .restart local v1       #item:Lcom/baidu/bulletin/entity/ChannelItem;
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/baidu/bulletin/network/logic/ItemBriefImageDownloaderByPage;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Save or update stair channel file failed"

    invoke-static {v2, v3, v0}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDownloadFileProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 0
    .parameter "fileitem"

    .prologue
    .line 87
    return-void
.end method
