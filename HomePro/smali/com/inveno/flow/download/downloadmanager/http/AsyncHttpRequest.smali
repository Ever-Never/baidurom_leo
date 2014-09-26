.class public Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private isBinaryRequest:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 8
    .parameter "client"
    .parameter "context"
    .parameter "request"
    .parameter "responseHandler"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 29
    iput-object p2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 30
    iput-object p3, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 31
    iput-object p4, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    .line 32
    instance-of v4, p4, Lcom/inveno/flow/download/downloadmanager/http/BinaryHttpResponseHandler;

    if-eqz v4, :cond_1

    .line 34
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->isBinaryRequest:Z

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    instance-of v4, p4, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    if-eqz v4, :cond_0

    move-object v0, p4

    .line 37
    check-cast v0, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;

    .line 38
    .local v0, fileHttpResponseHandler:Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;
    invoke-virtual {v0}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->getTempFile()Ljava/io/File;

    move-result-object v3

    .line 40
    .local v3, tempFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 44
    .local v1, previousFileSize:J
    invoke-virtual {v0, v1, v2}, Lcom/inveno/flow/download/downloadmanager/http/FileHttpResponseHandler;->setPreviousFileSize(J)V

    .line 45
    iget-object v4, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v5, "RANGE"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bytes="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 46
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-interface {v4, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeRequest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v3, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v4, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 91
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {v2, v1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    throw v0
.end method

.method private makeRequestWithRetries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ConnectException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v3, 0x1

    .line 119
    .local v3, retry:Z
    const/4 v0, 0x0

    .line 120
    .local v0, cause:Ljava/io/IOException;
    iget-object v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 121
    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v4

    .line 122
    .local v4, retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    :goto_0
    if-nez v3, :cond_0

    .line 168
    new-instance v2, Ljava/net/ConnectException;

    invoke-direct {v2}, Ljava/net/ConnectException;-><init>()V

    .line 169
    .local v2, ex:Ljava/net/ConnectException;
    invoke-virtual {v2, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 170
    throw v2

    .line 126
    .end local v2           #ex:Ljava/net/ConnectException;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    .line 149
    :cond_1
    :goto_1
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Ljava/net/UnknownHostException;
    iget-object v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    if-eqz v5, :cond_1

    .line 132
    iget-object v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    const-string v6, "can\'t resolve host"

    invoke-virtual {v5, v1, v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    .end local v1           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 138
    .local v1, e:Ljava/net/SocketException;
    iget-object v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    if-eqz v5, :cond_1

    .line 140
    iget-object v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    const-string v6, "can\'t resolve host"

    invoke-virtual {v5, v1, v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    .end local v1           #e:Ljava/net/SocketException;
    :catch_2
    move-exception v1

    .line 145
    .local v1, e:Ljava/net/SocketTimeoutException;
    iget-object v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    if-eqz v5, :cond_1

    .line 147
    iget-object v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    const-string v6, "socket time out"

    invoke-virtual {v5, v1, v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    .end local v1           #e:Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v1

    .line 152
    .local v1, e:Ljava/io/IOException;
    move-object v0, v1

    .line 153
    iget v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->executionCount:I

    .line 154
    iget-object v6, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 153
    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    goto :goto_0

    .line 155
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 161
    .local v1, e:Ljava/lang/NullPointerException;
    new-instance v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NPE in HttpClient"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v0       #cause:Ljava/io/IOException;
    iget v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->executionCount:I

    .line 163
    iget-object v6, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 162
    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendStartMessage()V

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->makeRequestWithRetries()V

    .line 63
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendFinishMessage()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_1
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendFinishMessage()V

    .line 73
    iget-boolean v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->isBinaryRequest:Z

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {v1, v0, v2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;->responseHandler:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {v1, v0, v2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
