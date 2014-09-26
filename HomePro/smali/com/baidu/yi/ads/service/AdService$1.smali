.class Lcom/baidu/yi/ads/service/AdService$1;
.super Lcom/baidu/yi/ads/service/IAdService$Stub;
.source "AdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/AdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/service/AdService;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/service/AdService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/service/AdService$1;->this$0:Lcom/baidu/yi/ads/service/AdService;

    .line 163
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/IAdService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public executeAction(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "actionType"
    .parameter "destination"
    .parameter "desc"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService$1;->this$0:Lcom/baidu/yi/ads/service/AdService;

    #calls: Lcom/baidu/yi/ads/service/AdService;->executeAction(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/baidu/yi/ads/service/AdService;->access$1(Lcom/baidu/yi/ads/service/AdService;ILjava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public getAd(Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V
    .locals 1
    .parameter "params"
    .parameter "adListener"
    .parameter "adViewWidth"
    .parameter "adViewHeight"

    .prologue
    .line 172
    if-eqz p2, :cond_0

    .line 173
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService$1;->this$0:Lcom/baidu/yi/ads/service/AdService;

    #calls: Lcom/baidu/yi/ads/service/AdService;->getAd(Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/baidu/yi/ads/service/AdService;->access$0(Lcom/baidu/yi/ads/service/AdService;Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V

    .line 175
    :cond_0
    return-void
.end method

.method public getAdViewBackground()Lcom/baidu/yi/ads/AdViewBackground;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService$1;->this$0:Lcom/baidu/yi/ads/service/AdService;

    #calls: Lcom/baidu/yi/ads/service/AdService;->getAdViewBackground()Lcom/baidu/yi/ads/AdViewBackground;
    invoke-static {v0}, Lcom/baidu/yi/ads/service/AdService;->access$2(Lcom/baidu/yi/ads/service/AdService;)Lcom/baidu/yi/ads/AdViewBackground;

    move-result-object v0

    return-object v0
.end method
