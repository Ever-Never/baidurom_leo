.class Lcom/baidu/yi/ads/service/network/ProtocolPackager$1;
.super Lcom/baidu/yi/ads/service/http/HttpTask;
.source "ProtocolPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/yi/ads/service/network/ProtocolPackager;->requestAds(Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/service/network/ProtocolPackager;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/service/network/ProtocolPackager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager$1;->this$0:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    .line 29
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressed()V
    .locals 5

    .prologue
    .line 31
    iget-object v0, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager$1;->this$0:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    iget-object v1, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager$1;->mProgress:Lcom/baidu/yi/ads/service/http/HttpTask$Progress;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpTask$Progress;->mState:Lcom/baidu/yi/ads/service/http/HttpTask$State;

    #calls: Lcom/baidu/yi/ads/service/network/ProtocolPackager;->httpFinished(Lcom/baidu/yi/ads/service/http/HttpTask$State;)Z
    invoke-static {v0, v1}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->access$0(Lcom/baidu/yi/ads/service/network/ProtocolPackager;Lcom/baidu/yi/ads/service/http/HttpTask$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager$1;->this$0:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    #getter for: Lcom/baidu/yi/ads/service/network/ProtocolPackager;->mObserver:Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;
    invoke-static {v0}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->access$1(Lcom/baidu/yi/ads/service/network/ProtocolPackager;)Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;

    move-result-object v1

    .line 33
    iget-object v0, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager$1;->this$0:Lcom/baidu/yi/ads/service/network/ProtocolPackager;

    const-class v2, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;

    iget-object v3, p0, Lcom/baidu/yi/ads/service/network/ProtocolPackager$1;->mBuffer:[B

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    #calls: Lcom/baidu/yi/ads/service/network/ProtocolPackager;->buildResponse(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v2, v3, v4}, Lcom/baidu/yi/ads/service/network/ProtocolPackager;->access$2(Lcom/baidu/yi/ads/service/network/ProtocolPackager;Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;

    .line 32
    invoke-virtual {v1, v0}, Lcom/baidu/yi/ads/service/network/ProtocolPackager$Observer;->receiveAds(Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Response;)V

    .line 35
    :cond_0
    return-void
.end method
