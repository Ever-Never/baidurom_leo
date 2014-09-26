.class Lcom/baidu/yi/ads/AdView$4;
.super Landroid/webkit/WebViewClient;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/yi/ads/AdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFinished:Z

.field final synthetic this$0:Lcom/baidu/yi/ads/AdView;


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/AdView;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView$4;->this$0:Lcom/baidu/yi/ads/AdView;

    .line 1137
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/yi/ads/AdView$4;->mFinished:Z

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1147
    const-string v0, "onPageFinished"

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 1148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/yi/ads/AdView$4;->mFinished:Z

    .line 1149
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 1150
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFocus()V

    .line 1151
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$4;->this$0:Lcom/baidu/yi/ads/AdView;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/AdView;->clearFocus()V

    .line 1152
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$4;->this$0:Lcom/baidu/yi/ads/AdView;

    #calls: Lcom/baidu/yi/ads/AdView;->setNormalBackground()V
    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->access$37(Lcom/baidu/yi/ads/AdView;)V

    .line 1153
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$4;->this$0:Lcom/baidu/yi/ads/AdView;

    const/high16 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/yi/ads/AdView;->setDescendantFocusability(I)V

    .line 1154
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1142
    const-string v0, "onPageStarted"

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 1143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/yi/ads/AdView$4;->mFinished:Z

    .line 1144
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedError errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logW(Ljava/lang/String;)V

    .line 1158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/yi/ads/AdView$4;->mFinished:Z

    .line 1159
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1162
    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdView$4;->mFinished:Z

    if-eqz v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView$4;->this$0:Lcom/baidu/yi/ads/AdView;

    #calls: Lcom/baidu/yi/ads/AdView;->handleAction(Ljava/lang/String;)V
    invoke-static {v0, p2}, Lcom/baidu/yi/ads/AdView;->access$47(Lcom/baidu/yi/ads/AdView;Ljava/lang/String;)V

    .line 1164
    const/4 v0, 0x1

    .line 1166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
