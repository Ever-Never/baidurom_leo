.class Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;
.super Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;
.source "ItemAttachementDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageDownloadObserver"
.end annotation


# instance fields
.field private mObserver:Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;

.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;)V
    .locals 1
    .parameter
    .parameter "item"
    .parameter "observer"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;->this$0:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;-><init>()V

    .line 144
    iput-object p3, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;->mObserver:Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;

    .line 145
    #getter for: Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mBatchPageDownloader:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;
    invoke-static {p1}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->access$200(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;)Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->blacklist()Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->add(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected onFinished(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;->this$0:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mBatchPageDownloader:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;
    invoke-static {v0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->access$200(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;)Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->blacklist()Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader$Blacklist;->remove(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 151
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;->mObserver:Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->setResult(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 152
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;->mObserver:Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;->onFinished()V

    .line 154
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$PageDownloadObserver;->this$0:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mSinglePageDownloader:Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->access$302(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;)Lcom/baidu/bulletin/network/logic/SerialDownloadTaskManager;

    .line 155
    return-void
.end method
