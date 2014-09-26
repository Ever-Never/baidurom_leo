.class Lcom/baidu/bulletin/DataSyncer$PageDownloadObserver;
.super Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;
.source "DataSyncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/DataSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageDownloadObserver"
.end annotation


# instance fields
.field private mRequestTime:J

.field final synthetic this$0:Lcom/baidu/bulletin/DataSyncer;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/DataSyncer;)V
    .locals 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/baidu/bulletin/DataSyncer$PageDownloadObserver;->this$0:Lcom/baidu/bulletin/DataSyncer;

    invoke-direct {p0}, Lcom/baidu/bulletin/network/logic/SingleTaskDownloadObserver;-><init>()V

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bulletin/DataSyncer$PageDownloadObserver;->mRequestTime:J

    #setter for: Lcom/baidu/bulletin/DataSyncer;->mLatestPageRequestTime:J
    invoke-static {p1, v0, v1}, Lcom/baidu/bulletin/DataSyncer;->access$702(Lcom/baidu/bulletin/DataSyncer;J)J

    .line 296
    return-void
.end method


# virtual methods
.method protected onFinished(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 300
    iget-wide v0, p0, Lcom/baidu/bulletin/DataSyncer$PageDownloadObserver;->mRequestTime:J

    iget-object v2, p0, Lcom/baidu/bulletin/DataSyncer$PageDownloadObserver;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #getter for: Lcom/baidu/bulletin/DataSyncer;->mLatestPageRequestTime:J
    invoke-static {v2}, Lcom/baidu/bulletin/DataSyncer;->access$700(Lcom/baidu/bulletin/DataSyncer;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer$PageDownloadObserver;->this$0:Lcom/baidu/bulletin/DataSyncer;

    const-wide/16 v1, 0x0

    #setter for: Lcom/baidu/bulletin/DataSyncer;->mLatestPageRequestTime:J
    invoke-static {v0, v1, v2}, Lcom/baidu/bulletin/DataSyncer;->access$702(Lcom/baidu/bulletin/DataSyncer;J)J

    .line 302
    iget-object v0, p0, Lcom/baidu/bulletin/DataSyncer$PageDownloadObserver;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #getter for: Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;
    invoke-static {v0}, Lcom/baidu/bulletin/DataSyncer;->access$500(Lcom/baidu/bulletin/DataSyncer;)Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/DataSyncer$SyncObserver;->onPageLoaded(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 304
    :cond_0
    return-void
.end method
