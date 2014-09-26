.class Lcom/baidu/yi/ads/AdServiceConnector$2;
.super Lcom/baidu/yi/ads/service/IAdRequestListener$Stub;
.source "AdServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/AdServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/AdServiceConnector;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/AdServiceConnector;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/AdServiceConnector$2;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    .line 182
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/IAdRequestListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdRetrieved(Lcom/baidu/yi/ads/Ad;)V
    .locals 2
    .parameter "iad"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Ad returned from service. Ad is null ? "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$2;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    #setter for: Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;
    invoke-static {v0, p1}, Lcom/baidu/yi/ads/AdServiceConnector;->access$4(Lcom/baidu/yi/ads/AdServiceConnector;Lcom/baidu/yi/ads/Ad;)V

    .line 187
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$2;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    #getter for: Lcom/baidu/yi/ads/AdServiceConnector;->mAdView:Lcom/baidu/yi/ads/AdView;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdServiceConnector;->access$5(Lcom/baidu/yi/ads/AdServiceConnector;)Lcom/baidu/yi/ads/AdView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/ads/AdServiceConnector$2;->this$0:Lcom/baidu/yi/ads/AdServiceConnector;

    #getter for: Lcom/baidu/yi/ads/AdServiceConnector;->mAd:Lcom/baidu/yi/ads/Ad;
    invoke-static {v1}, Lcom/baidu/yi/ads/AdServiceConnector;->access$6(Lcom/baidu/yi/ads/AdServiceConnector;)Lcom/baidu/yi/ads/Ad;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/AdView;->onAdRetrieved(Lcom/baidu/yi/ads/Ad;)V

    .line 188
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
