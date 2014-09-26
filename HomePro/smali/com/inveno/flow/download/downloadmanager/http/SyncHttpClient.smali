.class public abstract Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;
.super Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;
.source "SyncHttpClient.java"


# instance fields
.field private responseCode:I

.field protected responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

.field protected result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;-><init>()V

    .line 18
    new-instance v0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient$1;

    invoke-direct {v0, p0}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient$1;-><init>(Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    iput p1, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseCode:I

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 120
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->delete(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 121
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "params"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->delete(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 116
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 0
    .parameter "url"
    .parameter "queryParams"
    .parameter "responseHandler"

    .prologue
    .line 77
    invoke-virtual {p0, p1, p3}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->delete(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 78
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 90
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 91
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "params"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 86
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseCode:I

    return v0
.end method

.method public abstract onRequestFailed(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public post(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 110
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 111
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "params"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->post(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 106
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 100
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->put(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 101
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "params"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {p0, p1, p2, v0}, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->put(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 96
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/SyncHttpClient;->result:Ljava/lang/String;

    return-object v0
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V
    .locals 1
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"
    .parameter "responseHandler"
    .parameter "context"

    .prologue
    .line 61
    if-eqz p4, :cond_0

    .line 62
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    new-instance v0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 69
    invoke-virtual {v0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->run()V

    .line 70
    return-void
.end method
