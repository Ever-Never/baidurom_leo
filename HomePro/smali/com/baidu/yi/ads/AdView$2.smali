.class Lcom/baidu/yi/ads/AdView$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/yi/ads/AdView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/yi/ads/AdView;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView$2;->this$0:Lcom/baidu/yi/ads/AdView;

    .line 914
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$2;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mType:I
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$6(Lcom/baidu/yi/ads/AdView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$2;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$38(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/service/AdSpaceParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/yi/ads/service/AdSpaceParams;->getQShiReq()Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->appid:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$2;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mCurrentAdId:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/yi/ads/AdView;->access$39(Lcom/baidu/yi/ads/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/yi/ads/ubc/UBC;->submitAdClickEventMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$2;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$40(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/AdServiceConnector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/AdServiceConnector;->executeAction(Lcom/baidu/yi/ads/Ad$Action;)V

    .line 922
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$2;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$41(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/ActionExecutionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$2;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$41(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/ActionExecutionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/yi/ads/ActionExecutionListener;->onActionExecuted()V

    goto :goto_0
.end method
