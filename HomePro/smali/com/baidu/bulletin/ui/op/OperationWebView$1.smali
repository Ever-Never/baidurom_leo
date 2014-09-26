.class Lcom/baidu/bulletin/ui/op/OperationWebView$1;
.super Landroid/webkit/WebChromeClient;
.source "OperationWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/op/OperationWebView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/op/OperationWebView;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/op/OperationWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/bulletin/ui/op/OperationWebView$1;->this$0:Lcom/baidu/bulletin/ui/op/OperationWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 50
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView$1;->this$0:Lcom/baidu/bulletin/ui/op/OperationWebView;

    #getter for: Lcom/baidu/bulletin/ui/op/OperationWebView;->mPrDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->access$000(Lcom/baidu/bulletin/ui/op/OperationWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView$1;->this$0:Lcom/baidu/bulletin/ui/op/OperationWebView;

    #getter for: Lcom/baidu/bulletin/ui/op/OperationWebView;->mPrDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/op/OperationWebView;->access$000(Lcom/baidu/bulletin/ui/op/OperationWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 53
    iget-object v0, p0, Lcom/baidu/bulletin/ui/op/OperationWebView$1;->this$0:Lcom/baidu/bulletin/ui/op/OperationWebView;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/bulletin/ui/op/OperationWebView;->mPrDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/ui/op/OperationWebView;->access$002(Lcom/baidu/bulletin/ui/op/OperationWebView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 56
    :cond_0
    return-void
.end method
