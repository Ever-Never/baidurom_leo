.class Lcom/baidu/bulletin/network/logic/ChannelDownloader$3;
.super Ljava/lang/Object;
.source "ChannelDownloader.java"

# interfaces
.implements Lcom/baidu/bulletin/network/logic/DownloadObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/network/logic/ChannelDownloader;->notifyObserverIfNoMore()V
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
    .line 112
    iput-object p1, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader$3;->this$0:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/bulletin/network/logic/ChannelDownloader$3;->this$0:Lcom/baidu/bulletin/network/logic/ChannelDownloader;

    #getter for: Lcom/baidu/bulletin/network/logic/ChannelDownloader;->mTaskCancelled:Z
    invoke-static {v0}, Lcom/baidu/bulletin/network/logic/ChannelDownloader;->access$000(Lcom/baidu/bulletin/network/logic/ChannelDownloader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->getInstance()Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/network/logic/ItemAttachementDownloader;->downloadAll()V

    .line 120
    :cond_0
    return-void
.end method
