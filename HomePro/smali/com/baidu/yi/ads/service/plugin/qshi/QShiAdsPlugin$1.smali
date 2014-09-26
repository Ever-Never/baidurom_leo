.class Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin$1;
.super Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;
.source "QShiAdsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;

    .line 388
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized receiveAds(Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v3, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;->entity:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 409
    :goto_0
    monitor-exit p0

    return-void

    .line 394
    :cond_0
    :try_start_1
    iget-object v3, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;->entity:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;

    iget v3, v3, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;->n:I

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;->entity:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;

    iget-object v3, v3, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;->ad:[Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;

    if-eqz v3, :cond_2

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requested ad number = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;->entity:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;

    iget v4, v4, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;

    #getter for: Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mQShiAdsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->access$0(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 397
    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;

    const/4 v4, 0x0

    #setter for: Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mCurAdsIndex:I
    invoke-static {v3, v4}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->access$1(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;I)V

    .line 398
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;->entity:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;

    iget v3, v3, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;->n:I

    if-lt v1, v3, :cond_1

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, ad:Lcom/baidu/yi/ads/Ad;
    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;

    #calls: Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->getCachedAd()Lcom/baidu/yi/ads/Ad;
    invoke-static {v3}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->access$2(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;)Lcom/baidu/yi/ads/Ad;

    move-result-object v0

    .line 405
    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;

    #getter for: Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;
    invoke-static {v3}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->access$3(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;)Lcom/baidu/yi/ads/service/AdService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/yi/ads/service/AdService;->onAdClientNotice(Lcom/baidu/yi/ads/Ad;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 391
    .end local v0           #ad:Lcom/baidu/yi/ads/Ad;
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 399
    .restart local v1       #i:I
    :cond_1
    :try_start_2
    iget-object v3, p1, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;->entity:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;

    iget-object v3, v3, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Entity;->ad:[Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;

    aget-object v2, v3, v1

    .line 400
    .local v2, item:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;
    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;

    #getter for: Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mQShiAdsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->access$0(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 407
    .end local v1           #i:I
    .end local v2           #item:Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAdsItem;
    :cond_2
    iget-object v3, p0, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin$1;->this$0:Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;

    #getter for: Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;
    invoke-static {v3}, Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;->access$3(Lcom/baidu/yi/ads/service/plugin/qshi/QShiAdsPlugin;)Lcom/baidu/yi/ads/service/AdService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/baidu/yi/ads/service/AdService;->onAdClientNotice(Lcom/baidu/yi/ads/Ad;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
