.class Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$1;
.super Ljava/lang/Thread;
.source "ItemAttachementDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->downloadAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/baidu/bulletin/DataRepository;->getInstance()Lcom/baidu/bulletin/DataRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/DataRepository;->queryNeedDetailChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 58
    .local v0, channelItems:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total number of detail items in current channel is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mBatchMusicDownloader:Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;
    invoke-static {v1}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->access$100(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;)Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/logic/MusicAttachementDownloader;->download([Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 61
    iget-object v1, p0, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader$1;->this$0:Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->mBatchPageDownloader:Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;
    invoke-static {v1}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->access$200(Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;)Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/logic/PageAttachementDownloader;->download([Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 63
    :cond_0
    return-void
.end method
