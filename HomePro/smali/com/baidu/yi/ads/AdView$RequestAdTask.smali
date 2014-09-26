.class Lcom/baidu/yi/ads/AdView$RequestAdTask;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestAdTask"
.end annotation


# instance fields
.field mListener:Lcom/baidu/yi/ads/AdRetrievalListener;

.field final synthetic this$0:Lcom/baidu/yi/ads/AdView;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/ads/AdView;Lcom/baidu/yi/ads/AdRetrievalListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1323
    iput-object p2, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->mListener:Lcom/baidu/yi/ads/AdRetrievalListener;

    .line 1324
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1328
    const-string v0, "Request ad called"

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 1329
    invoke-static {}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Network;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1330
    const-string v0, "Network unavailable"

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$42(Lcom/baidu/yi/ads/AdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v1, v1, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    iget-object v2, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mPeriod:J
    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->access$43(Lcom/baidu/yi/ads/AdView;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1351
    :goto_0
    return-void

    .line 1336
    :cond_0
    monitor-enter p0

    .line 1337
    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mRequestInProcess:Z
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$44(Lcom/baidu/yi/ads/AdView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1338
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->mListener:Lcom/baidu/yi/ads/AdRetrievalListener;

    #setter for: Lcom/baidu/yi/ads/AdView;->mAdListener:Lcom/baidu/yi/ads/AdRetrievalListener;
    invoke-static {v0, v1}, Lcom/baidu/yi/ads/AdView;->access$45(Lcom/baidu/yi/ads/AdView;Lcom/baidu/yi/ads/AdRetrievalListener;)V

    .line 1339
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/yi/ads/AdView;->mRequestInProcess:Z
    invoke-static {v0, v1}, Lcom/baidu/yi/ads/AdView;->access$46(Lcom/baidu/yi/ads/AdView;Z)V

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request ad type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;
    invoke-static {v1}, Lcom/baidu/yi/ads/AdView;->access$38(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/service/AdSpaceParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/AdSpaceParams;->getQShiReq()Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    move-result-object v1

    iget v1, v1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->at:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mType:I
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$6(Lcom/baidu/yi/ads/AdView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1342
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v0, v1}, Lcom/baidu/yi/ads/AdView;->access$7(Lcom/baidu/yi/ads/AdView;I)V

    .line 1343
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/yi/ads/AdView;->mHeight:I
    invoke-static {v0, v1}, Lcom/baidu/yi/ads/AdView;->access$8(Lcom/baidu/yi/ads/AdView;I)V

    .line 1345
    :cond_1
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$40(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/AdServiceConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;
    invoke-static {v1}, Lcom/baidu/yi/ads/AdView;->access$38(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/service/AdSpaceParams;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mWidth:I
    invoke-static {v2}, Lcom/baidu/yi/ads/AdView;->access$9(Lcom/baidu/yi/ads/AdView;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mHeight:I
    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->access$10(Lcom/baidu/yi/ads/AdView;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/yi/ads/AdServiceConnector;->requestAd(Lcom/baidu/yi/ads/service/AdSpaceParams;II)V

    .line 1336
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1347
    :cond_2
    :try_start_1
    const-string v0, "Show ad called with request already in process. Ignoring it."

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logW(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setListener(Lcom/baidu/yi/ads/AdRetrievalListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView$RequestAdTask;->mListener:Lcom/baidu/yi/ads/AdRetrievalListener;

    .line 1320
    return-void
.end method
