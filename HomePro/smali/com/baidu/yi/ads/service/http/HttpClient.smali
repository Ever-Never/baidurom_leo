.class public Lcom/baidu/yi/ads/service/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/service/http/HttpClient$Observer;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIME_OUT:I = 0xea60

.field private static final RETRY_COUNT:I = 0x3

.field private static final SOCKET_TIME_OUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCanceled:Z

.field private mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/baidu/yi/ads/service/http/HttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpClient;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mCanceled:Z

    .line 39
    return-void
.end method

.method private parseHeaders(Lorg/apache/http/HttpResponse;Lcom/baidu/yi/ads/service/http/HttpParam$Request;)V
    .locals 3
    .parameter "response"
    .parameter "request"

    .prologue
    .line 226
    const-string v1, "Content-Range"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 227
    .local v0, headers:[Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 228
    iget-object v1, p2, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->range:Lcom/baidu/yi/ads/service/http/HttpParam$Range;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/yi/ads/service/http/HttpParam$Range;->fromString(Ljava/lang/String;)V

    .line 230
    :cond_0
    return-void
.end method

.method private prepare()V
    .locals 5

    .prologue
    .line 135
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 136
    .local v0, params:Lorg/apache/http/params/HttpParams;
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 137
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 139
    const v1, 0xea60

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 140
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 142
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 143
    iget-object v1, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 144
    return-void
.end method

.method private setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/yi/ads/service/http/HttpParam$Request;)V
    .locals 7
    .parameter "uriRequest"
    .parameter "request"

    .prologue
    .line 193
    iget-object v4, p2, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->range:Lcom/baidu/yi/ads/service/http/HttpParam$Range;

    invoke-virtual {v4}, Lcom/baidu/yi/ads/service/http/HttpParam$Range;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    iget-object v4, p2, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->headers:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 195
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p2, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->headers:Ljava/util/Map;

    .line 198
    :cond_0
    iget-object v4, p2, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->headers:Ljava/util/Map;

    const-string v5, "Range"

    iget-object v6, p2, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->range:Lcom/baidu/yi/ads/service/http/HttpParam$Range;

    invoke-virtual {v6}, Lcom/baidu/yi/ads/service/http/HttpParam$Range;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    :cond_1
    iget-object v4, p2, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->headers:Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 203
    iget-object v4, p2, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 214
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_3
    return-void

    .line 204
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 205
    .local v0, element:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    .local v2, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    .local v3, value:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/yi/ads/service/http/HttpClient;->trimString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/baidu/yi/ads/service/http/HttpClient;->trimString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 209
    invoke-interface {p1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setParams(Lorg/apache/http/client/methods/HttpGet;Lcom/baidu/yi/ads/service/http/HttpParam$Request;)V
    .locals 4
    .parameter "get"
    .parameter "request"

    .prologue
    .line 172
    iget-object v0, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->params:Ljava/util/List;

    .line 173
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, url:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 177
    .restart local v1       #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static setParams(Lorg/apache/http/client/methods/HttpPost;Lcom/baidu/yi/ads/service/http/HttpParam$Request;)V
    .locals 3
    .parameter "post"
    .parameter "request"

    .prologue
    .line 182
    iget-object v1, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->params:Ljava/util/List;

    .line 183
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 185
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 186
    .local v0, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v0           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static setProxy(Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/baidu/yi/ads/service/http/HttpParam$Request;)V
    .locals 3
    .parameter "httpClient"
    .parameter "request"

    .prologue
    .line 165
    iget-object v1, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->proxy:Lcom/baidu/yi/ads/service/http/HttpParam$Host;

    invoke-virtual {v1}, Lcom/baidu/yi/ads/service/http/HttpParam$Host;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v1, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->proxy:Lcom/baidu/yi/ads/service/http/HttpParam$Host;

    iget-object v1, v1, Lcom/baidu/yi/ads/service/http/HttpParam$Host;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->proxy:Lcom/baidu/yi/ads/service/http/HttpParam$Host;

    iget v2, v2, Lcom/baidu/yi/ads/service/http/HttpParam$Host;->port:I

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 167
    .local v0, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 169
    .end local v0           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 1

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_1
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static trimString(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 217
    if-nez p0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 221
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mCanceled:Z

    .line 131
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpClient;->shutdown()V

    .line 132
    return-void
.end method

.method public execute(Lcom/baidu/yi/ads/service/http/HttpParam$Request;Lcom/baidu/yi/ads/service/http/HttpClient$Observer;)V
    .locals 12
    .parameter "request"
    .parameter "observer"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpClient;->prepare()V

    .line 68
    iget-object v9, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v9, p1}, Lcom/baidu/yi/ads/service/http/HttpClient;->setProxy(Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/baidu/yi/ads/service/http/HttpParam$Request;)V

    .line 71
    iget-object v9, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->host:Ljava/lang/String;

    const-string v10, " "

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, url:Ljava/lang/String;
    iput-object v8, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->host:Ljava/lang/String;

    .line 74
    sget-object v9, Lcom/baidu/yi/ads/service/http/HttpParam$Method;->GET:Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    iget-object v10, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->method:Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    if-ne v9, v10, :cond_2

    .line 75
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    iget-object v10, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 76
    iget-object v9, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v9, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {v9, p1}, Lcom/baidu/yi/ads/service/http/HttpClient;->setParams(Lorg/apache/http/client/methods/HttpGet;Lcom/baidu/yi/ads/service/http/HttpParam$Request;)V

    .line 82
    :goto_0
    sget-object v9, Lcom/baidu/yi/ads/service/http/HttpClient;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "url:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/baidu/yi/ads/service/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v9, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v9, p1}, Lcom/baidu/yi/ads/service/http/HttpClient;->setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/yi/ads/service/http/HttpParam$Request;)V

    .line 87
    const v9, -0xffff

    const/4 v10, 0x0

    :try_start_0
    invoke-interface {p2, v9, v10}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer;->onSend(II)V

    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Request uri : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 90
    iget-object v9, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v10, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v9, v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 91
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 92
    .local v7, statusCode:I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Response status code =  : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/baidu/yi/ads/service/AdService;->logD(Ljava/lang/String;)V

    .line 94
    const v9, -0xffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p2, v9, v10, v11}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer;->onReceive(II[B)V

    .line 96
    const/16 v9, 0xc8

    if-eq v9, v7, :cond_0

    const/16 v9, 0xce

    if-ne v9, v7, :cond_4

    .line 97
    :cond_0
    invoke-direct {p0, v6, p1}, Lcom/baidu/yi/ads/service/http/HttpClient;->parseHeaders(Lorg/apache/http/HttpResponse;Lcom/baidu/yi/ads/service/http/HttpParam$Request;)V

    .line 99
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 100
    .local v4, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_1

    .line 101
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 102
    .local v0, body:Ljava/io/InputStream;
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    long-to-int v1, v9

    .line 104
    .local v1, bodyLength:I
    const/4 v5, 0x0

    .line 105
    .local v5, len:I
    const/16 v9, 0x400

    new-array v2, v9, [B

    .line 107
    .local v2, buf:[B
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_3

    .line 112
    .end local v0           #body:Ljava/io/InputStream;
    .end local v1           #bodyLength:I
    .end local v2           #buf:[B
    .end local v5           #len:I
    :cond_1
    sget-object v9, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Success:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    invoke-interface {p2, v9}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer;->onFinish(Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    .end local v4           #httpEntity:Lorg/apache/http/HttpEntity;
    :goto_2
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpClient;->shutdown()V

    .line 127
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :goto_3
    return-void

    .line 78
    :cond_2
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    iget-object v10, p1, Lcom/baidu/yi/ads/service/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-direct {v9, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 79
    iget-object v9, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v9, p1}, Lcom/baidu/yi/ads/service/http/HttpClient;->setParams(Lorg/apache/http/client/methods/HttpPost;Lcom/baidu/yi/ads/service/http/HttpParam$Request;)V

    goto/16 :goto_0

    .line 108
    .restart local v0       #body:Ljava/io/InputStream;
    .restart local v1       #bodyLength:I
    .restart local v2       #buf:[B
    .restart local v4       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v5       #len:I
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #statusCode:I
    :cond_3
    :try_start_1
    invoke-interface {p2, v1, v5, v2}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer;->onReceive(II[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 116
    .end local v0           #body:Ljava/io/InputStream;
    .end local v1           #bodyLength:I
    .end local v2           #buf:[B
    .end local v4           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #len:I
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :catch_0
    move-exception v3

    .line 117
    .local v3, e:Ljava/io/InterruptedIOException;
    :try_start_2
    iget-boolean v9, p0, Lcom/baidu/yi/ads/service/http/HttpClient;->mCanceled:Z

    if-eqz v9, :cond_5

    .line 118
    sget-object v9, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Canceled:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    invoke-interface {p2, v9}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer;->onFinish(Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :goto_4
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpClient;->shutdown()V

    goto :goto_3

    .line 114
    .end local v3           #e:Ljava/io/InterruptedIOException;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #statusCode:I
    :cond_4
    :try_start_3
    sget-object v9, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Failed:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    invoke-interface {p2, v9}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer;->onFinish(Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 122
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :catch_1
    move-exception v3

    .line 123
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v9, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Failed:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    invoke-interface {p2, v9}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer;->onFinish(Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 125
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpClient;->shutdown()V

    goto :goto_3

    .line 120
    .local v3, e:Ljava/io/InterruptedIOException;
    :cond_5
    :try_start_5
    sget-object v9, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Failed:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    invoke-interface {p2, v9}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer;->onFinish(Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 124
    .end local v3           #e:Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v9

    .line 125
    invoke-direct {p0}, Lcom/baidu/yi/ads/service/http/HttpClient;->shutdown()V

    .line 126
    throw v9
.end method
