.class Lcom/baidu/bulletin/utils/MusicPlayer$1;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Lcom/baidu/bulletin/network/FileDownloader$Observer;


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
    .line 119
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFileProgressed(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    .locals 3
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->FiledownloadFinished:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->setState(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V
    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$100(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;)V

    .line 124
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCancelled:Z
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$200(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/baidu/bulletin/network/FileDownloader$Response;->downloadPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadcalled:Z
    invoke-static {v0, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$302(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 126
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCancelled:Z
    invoke-static {v0, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$202(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 127
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->downloadNextAndremoveOthers()V
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$400(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mResetDateOnce:Z
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$500(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mResetDateOnce:Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$502(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 132
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->resetData()V
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$600(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    .line 133
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stream music resetData() called!!!"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->taskCompleted(Lcom/baidu/bulletin/network/FileDownloader$Response;)V
    invoke-static {v0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$800(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/network/FileDownloader$Response;)V

    goto :goto_0
.end method

.method public onDownloadFileProgressing(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    .locals 2
    .parameter "fileitem"

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mFiledownloadCancelled:Z
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$200(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mResetDateOnce:Z
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$500(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$000(Lcom/baidu/bulletin/utils/MusicPlayer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->mResetDateOnce:Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;->access$502(Lcom/baidu/bulletin/utils/MusicPlayer$StreamItem;Z)Z

    .line 146
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->resetData()V
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$600(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    .line 147
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stream music resetData() called!!!"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$1;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->taskStarted(Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V
    invoke-static {v0, p1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$900(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/network/FileDownloader$FileItem;)V

    goto :goto_0
.end method
