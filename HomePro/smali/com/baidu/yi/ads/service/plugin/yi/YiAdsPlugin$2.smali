.class Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$2;
.super Lcom/baidu/opservice/aidl/IOpServiceCallbackAidl$Stub;
.source "YiAdsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$2;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    .line 83
    invoke-direct {p0}, Lcom/baidu/opservice/aidl/IOpServiceCallbackAidl$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdArrive(Lcom/baidu/opservice/aidl/AdRsp;)V
    .locals 3
    .parameter "adRsp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    iget v1, p1, Lcom/baidu/opservice/aidl/AdRsp;->result:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get ad success from yi service, result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/baidu/opservice/aidl/AdRsp;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request interval, interval = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/baidu/opservice/aidl/AdRsp;->interval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request showtime, showtime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/baidu/opservice/aidl/AdRsp;->showtime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$2;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    #calls: Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->getCachedAd(Lcom/baidu/opservice/aidl/AdRsp;)Lcom/baidu/yi/ads/Ad;
    invoke-static {v1, p1}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->access$4(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;Lcom/baidu/opservice/aidl/AdRsp;)Lcom/baidu/yi/ads/Ad;

    move-result-object v0

    .line 99
    .local v0, ad:Lcom/baidu/yi/ads/Ad;
    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$2;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    #getter for: Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->mAdService:Lcom/baidu/yi/ads/service/AdService;
    invoke-static {v1}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->access$5(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;)Lcom/baidu/yi/ads/service/AdService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/yi/ads/service/AdService;->onAdClientNotice(Lcom/baidu/yi/ads/Ad;)V

    .line 100
    .end local v0           #ad:Lcom/baidu/yi/ads/Ad;
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get ad fail from yi service, reason = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/baidu/opservice/aidl/AdRsp;->reason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin$2;->this$0:Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;

    #calls: Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->handleErrorRsp(Lcom/baidu/opservice/aidl/AdRsp;)V
    invoke-static {v1, p1}, Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;->access$3(Lcom/baidu/yi/ads/service/plugin/yi/YiAdsPlugin;Lcom/baidu/opservice/aidl/AdRsp;)V

    goto :goto_0
.end method
