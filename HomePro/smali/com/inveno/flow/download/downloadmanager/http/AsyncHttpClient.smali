.class public Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field private static final DEFAULT_CORE_POOL_SIZE:I = 0x5

.field private static final DEFAULT_KEEP_ALIVETIME:I = 0x0

.field private static final DEFAULT_MAXIMUM_POOL_SIZE:I = 0xa

.field private static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field private static final DEFAULT_MAX_RETRIES:I = 0x5

.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final VERSION:Ljava/lang/String; = "1.1"

.field private static maxConnections:I

.field private static socketTimeout:I


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;>;>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0xa

    sput v0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->maxConnections:I

    .line 75
    const/16 v0, 0x2710

    sput v0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->socketTimeout:I

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x5

    const/4 v5, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v9, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v9}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 86
    .local v9, httpParams:Lorg/apache/http/params/BasicHttpParams;
    sget v0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->socketTimeout:I

    int-to-long v3, v0

    invoke-static {v9, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 88
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    sget v3, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v0, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 87
    invoke-static {v9, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 89
    invoke-static {v9, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    sget v0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->socketTimeout:I

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 93
    sget v0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->socketTimeout:I

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    invoke-static {v9, v5}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 96
    const/16 v0, 0x2000

    .line 95
    invoke-static {v9, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 98
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 100
    const-string v0, "thinkandroid/%s (http://www.thinkandroid.cn)"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "1.1"

    aput-object v5, v3, v4

    .line 99
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 102
    new-instance v10, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v10}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 103
    .local v10, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    .line 104
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 103
    invoke-virtual {v10, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 105
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    .line 106
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v0, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 105
    invoke-virtual {v10, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 107
    new-instance v8, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 110
    .local v8, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v0, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v0, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 111
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 112
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient$1;

    invoke-direct {v3, p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient$1;-><init>(Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;)V

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 128
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient$2;

    invoke-direct {v3, p0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient$2;-><init>(Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;)V

    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 154
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/inveno/flow/download/downloadmanager/http/RetryHandler;

    .line 155
    invoke-direct {v3, v1}, Lcom/inveno/flow/download/downloadmanager/http/RetryHandler;-><init>(I)V

    .line 154
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 157
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 158
    const-wide/16 v3, 0x0

    .line 159
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 160
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 157
    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 162
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 164
    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .parameter "requestBase"
    .parameter "entity"

    .prologue
    .line 845
    if-eqz p2, :cond_0

    .line 847
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 850
    :cond_0
    return-object p1
.end method

.method public static getUrlWithQueryString(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "params"

    .prologue
    .line 815
    if-eqz p1, :cond_0

    .line 817
    invoke-virtual {p1}, Lcom/inveno/flow/download/downloadmanager/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, paramString:Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 827
    .end local v0           #paramString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 823
    .restart local v0       #paramString:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private paramsToEntity(Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Lorg/apache/http/HttpEntity;
    .locals 1
    .parameter "params"

    .prologue
    .line 832
    const/4 v0, 0x0

    .line 834
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 836
    invoke-virtual {p1}, Lcom/inveno/flow/download/downloadmanager/http/RequestParams;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 839
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 315
    iget-object v3, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 316
    .local v1, requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-eqz v1, :cond_1

    .line 318
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 327
    :cond_1
    iget-object v3, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void

    .line 318
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 320
    .local v2, requestRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 321
    .local v0, request:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 757
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 758
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 760
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "responseHandler"

    .prologue
    .line 777
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 778
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    .line 779
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 780
    :cond_0
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 782
    return-void
.end method

.method public delete(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 741
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 742
    return-void
.end method

.method public download(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 429
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->download(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 430
    return-void
.end method

.method public download(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 449
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p2, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    .line 448
    invoke-virtual/range {v0 .. v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 451
    return-void
.end method

.method public download(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 406
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->download(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 407
    return-void
.end method

.method public download(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->download(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 413
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 378
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 397
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p2, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    .line 396
    invoke-virtual/range {v0 .. v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 399
    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 469
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {p2, p4}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->getUrlWithQueryString(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 470
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    .line 471
    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 474
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 345
    return-void
.end method

.method public get(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 361
    return-void
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 525
    invoke-direct {p0, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->paramsToEntity(Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 526
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 549
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 550
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    .line 549
    invoke-virtual/range {v0 .. v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 552
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 576
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 577
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p4, :cond_0

    .line 578
    invoke-direct {p0, p4}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->paramsToEntity(Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 579
    :cond_0
    if-eqz p3, :cond_1

    .line 580
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 583
    return-void
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 609
    .line 610
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 609
    invoke-direct {p0, v0, p4}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 611
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    .line 612
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 615
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 490
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 491
    return-void
.end method

.method public post(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 507
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 666
    invoke-direct {p0, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->paramsToEntity(Lcom/inveno/flow/download/downloadmanager/http/RequestParams;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 667
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 690
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 691
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    .line 690
    invoke-virtual/range {v0 .. v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 693
    return-void
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 719
    .line 720
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0, v0, p4}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 721
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    .line 722
    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 723
    :cond_0
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V

    .line 725
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 631
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 632
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/RequestParams;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 648
    return-void
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;Landroid/content/Context;)V
    .locals 4
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"
    .parameter "responseHandler"
    .parameter "context"

    .prologue
    .line 790
    if-eqz p4, :cond_0

    .line 792
    const-string v2, "Content-Type"

    invoke-interface {p3, v2, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :cond_0
    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;

    .line 796
    invoke-direct {v3, p1, p2, p3, p5}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V

    .line 795
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 797
    .local v0, request:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz p6, :cond_2

    .line 800
    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 801
    invoke-interface {v2, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 802
    .local v1, requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    if-nez v1, :cond_1

    .line 804
    new-instance v1, Ljava/util/LinkedList;

    .end local v1           #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 805
    .restart local v1       #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    iget-object v2, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2, p6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    .end local v1           #requestList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/ref/WeakReference<Ljava/util/concurrent/Future<*>;>;>;"
    :cond_2
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "user"
    .parameter "pass"

    .prologue
    .line 274
    sget-object v0, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .line 275
    .local v0, scope:Lorg/apache/http/auth/AuthScope;
    invoke-virtual {p0, p1, p2, v0}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V

    .line 276
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 2
    .parameter "user"
    .parameter "pass"
    .parameter "scope"

    .prologue
    .line 292
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v0, credentials:Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 296
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .parameter "cookieStore"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 196
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .parameter "sslSocketFactory"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 248
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 249
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0
    .parameter "threadPool"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 209
    return-void
.end method

.method public setTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 233
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 234
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 235
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 236
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 222
    return-void
.end method
