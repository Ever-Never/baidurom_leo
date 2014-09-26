.class public Lcom/baidu/bulletin/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/http/HttpClient$Observer;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIME_OUT:I = 0x9c40

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
    .line 39
    const-class v0, Lcom/baidu/bulletin/http/HttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/http/HttpClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/http/HttpClient;->mCanceled:Z

    return-void
.end method

.method private parseHeaders(Lorg/apache/http/HttpResponse;Lcom/baidu/bulletin/http/HttpParam$Request;)V
    .locals 3
    .parameter "response"
    .parameter "request"

    .prologue
    .line 223
    const-string v1, "Content-Range"

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 224
    .local v0, headers:[Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 225
    iget-object v1, p2, Lcom/baidu/bulletin/http/HttpParam$Request;->range:Lcom/baidu/bulletin/http/HttpParam$Range;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/http/HttpParam$Range;->fromString(Ljava/lang/String;)V

    .line 227
    :cond_0
    return-void
.end method

.method private prepare()V
    .locals 5

    .prologue
    .line 128
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 129
    .local v0, params:Lorg/apache/http/params/HttpParams;
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 130
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 132
    const v1, 0x9c40

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 133
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/baidu/bulletin/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 136
    iget-object v1, p0, Lcom/baidu/bulletin/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 137
    return-void
.end method

.method private setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/bulletin/http/HttpParam$Request;)V
    .locals 7
    .parameter "uriRequest"
    .parameter "request"

    .prologue
    .line 186
    iget-object v4, p2, Lcom/baidu/bulletin/http/HttpParam$Request;->range:Lcom/baidu/bulletin/http/HttpParam$Range;

    invoke-virtual {v4}, Lcom/baidu/bulletin/http/HttpParam$Range;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    iget-object v4, p2, Lcom/baidu/bulletin/http/HttpParam$Request;->headers:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 188
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p2, Lcom/baidu/bulletin/http/HttpParam$Request;->headers:Ljava/util/Map;

    .line 191
    :cond_0
    iget-object v4, p2, Lcom/baidu/bulletin/http/HttpParam$Request;->headers:Ljava/util/Map;

    const-string v5, "Range"

    iget-object v6, p2, Lcom/baidu/bulletin/http/HttpParam$Request;->range:Lcom/baidu/bulletin/http/HttpParam$Range;

    invoke-virtual {v6}, Lcom/baidu/bulletin/http/HttpParam$Range;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_1
    iget-object v4, p2, Lcom/baidu/bulletin/http/HttpParam$Request;->headers:Ljava/util/Map;

    const-string v5, "User-Agent"

    const-string v6, "BaiduBulletin"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v4, p2, Lcom/baidu/bulletin/http/HttpParam$Request;->headers:Ljava/util/Map;

    const-string v5, "Referer"

    const-string v6, "http://os.baidu.com"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v4, p2, Lcom/baidu/bulletin/http/HttpParam$Request;->headers:Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 200
    iget-object v4, p2, Lcom/baidu/bulletin/http/HttpParam$Request;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    .local v0, element:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 203
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 204
    .local v2, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 205
    .local v3, value:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/bulletin/http/HttpClient;->trimString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/baidu/bulletin/http/HttpClient;->trimString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    invoke-interface {p1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .end local v0           #element:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static setParams(Lorg/apache/http/client/methods/HttpGet;Lcom/baidu/bulletin/http/HttpParam$Request;)V
    .locals 4
    .parameter "get"
    .parameter "request"

    .prologue
    .line 165
    iget-object v0, p1, Lcom/baidu/bulletin/http/HttpParam$Request;->params:Ljava/util/List;

    .line 166
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, url:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v1       #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static setParams(Lorg/apache/http/client/methods/HttpPost;Lcom/baidu/bulletin/http/HttpParam$Request;)V
    .locals 3
    .parameter "post"
    .parameter "request"

    .prologue
    .line 175
    iget-object v1, p1, Lcom/baidu/bulletin/http/HttpParam$Request;->params:Ljava/util/List;

    .line 176
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 178
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 179
    .local v0, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static setProxy(Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/baidu/bulletin/http/HttpParam$Request;)V
    .locals 3
    .parameter "httpClient"
    .parameter "request"

    .prologue
    .line 158
    iget-object v1, p1, Lcom/baidu/bulletin/http/HttpParam$Request;->proxy:Lcom/baidu/bulletin/http/HttpParam$Host;

    invoke-virtual {v1}, Lcom/baidu/bulletin/http/HttpParam$Host;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v1, p1, Lcom/baidu/bulletin/http/HttpParam$Request;->proxy:Lcom/baidu/bulletin/http/HttpParam$Host;

    iget-object v1, v1, Lcom/baidu/bulletin/http/HttpParam$Host;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/bulletin/http/HttpParam$Request;->proxy:Lcom/baidu/bulletin/http/HttpParam$Host;

    iget v2, v2, Lcom/baidu/bulletin/http/HttpParam$Host;->port:I

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 160
    .local v0, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 162
    .end local v0           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 1

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/baidu/bulletin/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static trimString(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 214
    if-nez p0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 218
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
    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/http/HttpClient;->mCanceled:Z

    .line 124
    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpClient;->shutdown()V

    .line 125
    return-void
.end method

.method public execute(Lcom/baidu/bulletin/http/HttpParam$Request;Lcom/baidu/bulletin/http/HttpClient$Observer;)V
    .locals 11
    .parameter "request"
    .parameter "observer"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpClient;->prepare()V

    .line 66
    iget-object v8, p0, Lcom/baidu/bulletin/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {v8, p1}, Lcom/baidu/bulletin/http/HttpClient;->setProxy(Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/baidu/bulletin/http/HttpParam$Request;)V

    .line 68
    sget-object v8, Lcom/baidu/bulletin/http/HttpParam$Method;->GET:Lcom/baidu/bulletin/http/HttpParam$Method;

    iget-object v9, p1, Lcom/baidu/bulletin/http/HttpParam$Request;->method:Lcom/baidu/bulletin/http/HttpParam$Method;

    if-ne v8, v9, :cond_1

    .line 69
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    iget-object v9, p1, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/baidu/bulletin/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 70
    iget-object v8, p0, Lcom/baidu/bulletin/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {v8, p1}, Lcom/baidu/bulletin/http/HttpClient;->setParams(Lorg/apache/http/client/methods/HttpGet;Lcom/baidu/bulletin/http/HttpParam$Request;)V

    .line 76
    :goto_0
    sget-object v8, Lcom/baidu/bulletin/http/HttpClient;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "url:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v8, p0, Lcom/baidu/bulletin/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-direct {p0, v8, p1}, Lcom/baidu/bulletin/http/HttpClient;->setHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/bulletin/http/HttpParam$Request;)V

    .line 81
    const v8, -0xffff

    const/4 v9, 0x0

    :try_start_0
    invoke-interface {p2, v8, v9}, Lcom/baidu/bulletin/http/HttpClient$Observer;->onSend(II)V

    .line 83
    iget-object v8, p0, Lcom/baidu/bulletin/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v9, p0, Lcom/baidu/bulletin/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v8, v9}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 84
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 86
    .local v7, statusCode:I
    const v8, -0xffff

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {p2, v8, v9, v10}, Lcom/baidu/bulletin/http/HttpClient$Observer;->onReceive(II[B)V

    .line 88
    const/16 v8, 0xc8

    if-eq v8, v7, :cond_0

    const/16 v8, 0xce

    if-ne v8, v7, :cond_3

    .line 89
    :cond_0
    invoke-direct {p0, v6, p1}, Lcom/baidu/bulletin/http/HttpClient;->parseHeaders(Lorg/apache/http/HttpResponse;Lcom/baidu/bulletin/http/HttpParam$Request;)V

    .line 91
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 92
    .local v4, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_2

    .line 93
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 94
    .local v0, body:Ljava/io/InputStream;
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v1, v8

    .line 96
    .local v1, bodyLength:I
    const/4 v5, 0x0

    .line 97
    .local v5, len:I
    const/16 v8, 0x400

    new-array v2, v8, [B

    .line 99
    .local v2, buf:[B
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_2

    .line 100
    invoke-interface {p2, v1, v5, v2}, Lcom/baidu/bulletin/http/HttpClient$Observer;->onReceive(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 108
    .end local v0           #body:Ljava/io/InputStream;
    .end local v1           #bodyLength:I
    .end local v2           #buf:[B
    .end local v4           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v5           #len:I
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :catch_0
    move-exception v3

    .line 109
    .local v3, e:Ljava/io/InterruptedIOException;
    :try_start_1
    iget-boolean v8, p0, Lcom/baidu/bulletin/http/HttpClient;->mCanceled:Z

    if-eqz v8, :cond_4

    .line 110
    sget-object v8, Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;->Canceled:Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;

    invoke-interface {p2, v8}, Lcom/baidu/bulletin/http/HttpClient$Observer;->onFinish(Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    :goto_2
    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpClient;->shutdown()V

    .line 120
    .end local v3           #e:Ljava/io/InterruptedIOException;
    :goto_3
    return-void

    .line 72
    :cond_1
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    iget-object v9, p1, Lcom/baidu/bulletin/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-direct {v8, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/baidu/bulletin/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 73
    iget-object v8, p0, Lcom/baidu/bulletin/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v8, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v8, p1}, Lcom/baidu/bulletin/http/HttpClient;->setParams(Lorg/apache/http/client/methods/HttpPost;Lcom/baidu/bulletin/http/HttpParam$Request;)V

    goto/16 :goto_0

    .line 104
    .restart local v4       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v6       #response:Lorg/apache/http/HttpResponse;
    .restart local v7       #statusCode:I
    :cond_2
    :try_start_2
    sget-object v8, Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;->Success:Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;

    invoke-interface {p2, v8}, Lcom/baidu/bulletin/http/HttpClient$Observer;->onFinish(Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    .end local v4           #httpEntity:Lorg/apache/http/HttpEntity;
    :goto_4
    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpClient;->shutdown()V

    goto :goto_3

    .line 106
    :cond_3
    :try_start_3
    sget-object v8, Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;->Failed:Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;

    invoke-interface {p2, v8}, Lcom/baidu/bulletin/http/HttpClient$Observer;->onFinish(Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 114
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :catch_1
    move-exception v3

    .line 115
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    sget-object v8, Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;->Failed:Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;

    invoke-interface {p2, v8}, Lcom/baidu/bulletin/http/HttpClient$Observer;->onFinish(Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpClient;->shutdown()V

    goto :goto_3

    .line 112
    .local v3, e:Ljava/io/InterruptedIOException;
    :cond_4
    :try_start_5
    sget-object v8, Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;->Failed:Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;

    invoke-interface {p2, v8}, Lcom/baidu/bulletin/http/HttpClient$Observer;->onFinish(Lcom/baidu/bulletin/http/HttpClient$Observer$Reason;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 118
    .end local v3           #e:Ljava/io/InterruptedIOException;
    :catchall_0
    move-exception v8

    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpClient;->shutdown()V

    throw v8
.end method
