.class Lcom/baidu/yi/ads/AdView$MyURLSpan;
.super Landroid/text/style/ClickableSpan;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyURLSpan"
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/baidu/yi/ads/AdView;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 998
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView$MyURLSpan;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 999
    iput-object p2, p0, Lcom/baidu/yi/ads/AdView$MyURLSpan;->mUrl:Ljava/lang/String;

    .line 1000
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "widget"

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$MyURLSpan;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$38(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/service/AdSpaceParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/yi/ads/service/AdSpaceParams;->getQShiReq()Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->appid:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView$MyURLSpan;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mCurrentAdId:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/yi/ads/AdView;->access$39(Lcom/baidu/yi/ads/AdView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/yi/ads/ubc/UBC;->submitAdClickEventMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$MyURLSpan;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$40(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/AdServiceConnector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/AdServiceConnector;->executeAction(Lcom/baidu/yi/ads/Ad$Action;)V

    .line 1013
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$MyURLSpan;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$41(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/ActionExecutionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$MyURLSpan;->this$0:Lcom/baidu/yi/ads/AdView;

    #getter for: Lcom/baidu/yi/ads/AdView;->mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$41(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/ActionExecutionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/yi/ads/ActionExecutionListener;->onActionExecuted()V

    .line 1016
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .parameter "ds"

    .prologue
    .line 1005
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1006
    return-void
.end method
