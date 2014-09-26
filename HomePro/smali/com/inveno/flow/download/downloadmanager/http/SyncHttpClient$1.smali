.class Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient$1;
.super Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;
.source "SyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;


# direct methods
.method constructor <init>(Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;

    .line 18
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "content"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;

    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;

    invoke-virtual {v1, p1, p2}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->onRequestFailed(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->result:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;

    iput-object p1, v0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->result:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient$1;->handleMessage(Landroid/os/Message;)V

    .line 34
    return-void
.end method

.method protected sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    #setter for: Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseCode:I
    invoke-static {v0, v1}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->access$0(Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;I)V

    .line 24
    invoke-super {p0, p1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    .line 25
    return-void
.end method
