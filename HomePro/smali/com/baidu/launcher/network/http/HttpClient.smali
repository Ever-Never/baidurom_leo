.class public Lcom/baidu/launcher/network/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/network/http/HttpClient$Observer;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIME_OUT:I = 0x1770

.field private static final RETRY_COUNT:I = 0x3

.field private static final SOCKET_TIME_OUT:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCanceled:Z

.field private mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/baidu/launcher/network/http/HttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/network/http/HttpClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/network/http/HttpClient;->mCanceled:Z

    .line 84
    return-void
.end method

.method private prepare()V
    .locals 10

    .prologue
    .line 174
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/baidu/launcher/network/http/HttpClient;->mCanceled:Z

    .line 178
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 180
    .local v5, trustStore:Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 184
    new-instance v4, Lcom/baidu/launcher/network/http/TrustSSLSocketFactory;

    invoke-direct {v4, v5}, Lcom/baidu/launcher/network/http/TrustSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 186
    .local v4, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 188
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 189
    .local v2, params:Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 190
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 192
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 193
    .local v3, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 194
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 196
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 198
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v6, p0, Lcom/baidu/launcher/network/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 201
    iget-object v6, p0, Lcom/baidu/launcher/network/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v6, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_5

    .line 222
    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    .end local v3           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v5           #trustStore:Ljava/security/KeyStore;
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, e:Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v1           #e:Ljava/security/KeyStoreException;
    :catch_1
    move-exception v1

    .line 208
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 211
    .local v1, e:Ljava/security/cert/CertificateException;
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_0

    .line 212
    .end local v1           #e:Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v1

    .line 214
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 217
    .local v1, e:Ljava/security/KeyManagementException;
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v1           #e:Ljava/security/KeyManagementException;
    :catch_5
    move-exception v1

    .line 220
    .local v1, e:Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_0
.end method

.method private setHttpHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/launcher/network/http/HttpParam$Request;)V
    .locals 7
    .parameter "uriRequest"
    .parameter "request"

    .prologue
    .line 282
    iget-object v4, p2, Lcom/baidu/launcher/network/http/HttpParam$Request;->range:Lcom/baidu/launcher/network/http/HttpParam$Range;

    invoke-virtual {v4}, Lcom/baidu/launcher/network/http/HttpParam$Range;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 283
    iget-object v4, p2, Lcom/baidu/launcher/network/http/HttpParam$Request;->headers:Ljava/util/Map;

    if-nez v4, :cond_0

    .line 284
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p2, Lcom/baidu/launcher/network/http/HttpParam$Request;->headers:Ljava/util/Map;

    .line 287
    :cond_0
    iget-object v4, p2, Lcom/baidu/launcher/network/http/HttpParam$Request;->headers:Ljava/util/Map;

    const-string v5, "Range"

    iget-object v6, p2, Lcom/baidu/launcher/network/http/HttpParam$Request;->range:Lcom/baidu/launcher/network/http/HttpParam$Range;

    invoke-virtual {v6}, Lcom/baidu/launcher/network/http/HttpParam$Range;->toText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v4, Lcom/baidu/launcher/network/http/HttpClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "range - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/baidu/launcher/network/http/HttpParam$Request;->range:Lcom/baidu/launcher/network/http/HttpParam$Range;

    invoke-virtual {v6}, Lcom/baidu/launcher/network/http/HttpParam$Range;->toText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    iget-object v4, p2, Lcom/baidu/launcher/network/http/HttpParam$Request;->headers:Ljava/util/Map;

    if-eqz v4, :cond_3

    .line 294
    iget-object v4, p2, Lcom/baidu/launcher/network/http/HttpParam$Request;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 295
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 297
    .local v0, element:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 299
    .local v2, name:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 300
    .local v3, value:Ljava/lang/String;
    invoke-static {v2}, Lcom/baidu/launcher/network/http/HttpClient;->trimString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Lcom/baidu/launcher/network/http/HttpClient;->trimString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 301
    invoke-interface {p1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    .end local v0           #element:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static setProxy(Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/baidu/launcher/network/http/HttpParam$Request;)V
    .locals 3
    .parameter "httpClient"
    .parameter "request"

    .prologue
    .line 248
    iget-object v1, p1, Lcom/baidu/launcher/network/http/HttpParam$Request;->proxy:Lcom/baidu/launcher/network/http/HttpParam$Host;

    invoke-virtual {v1}, Lcom/baidu/launcher/network/http/HttpParam$Host;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    new-instance v0, Lorg/apache/http/HttpHost;

    iget-object v1, p1, Lcom/baidu/launcher/network/http/HttpParam$Request;->proxy:Lcom/baidu/launcher/network/http/HttpParam$Host;

    iget-object v1, v1, Lcom/baidu/launcher/network/http/HttpParam$Host;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/baidu/launcher/network/http/HttpParam$Request;->proxy:Lcom/baidu/launcher/network/http/HttpParam$Host;

    iget v2, v2, Lcom/baidu/launcher/network/http/HttpParam$Host;->port:I

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 250
    .local v0, proxy:Lorg/apache/http/HttpHost;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 252
    .end local v0           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    return-void
.end method

.method private static setUrlParams(Lorg/apache/http/client/methods/HttpGet;Lcom/baidu/launcher/network/http/HttpParam$Request;)Lorg/apache/http/client/methods/HttpGet;
    .locals 4
    .parameter "get"
    .parameter "request"

    .prologue
    .line 255
    iget-object v0, p1, Lcom/baidu/launcher/network/http/HttpParam$Request;->params:Ljava/util/List;

    .line 256
    .local v0, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, url:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 260
    .restart local v1       #url:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static setUrlParams(Lorg/apache/http/client/methods/HttpPost;Lcom/baidu/launcher/network/http/HttpParam$Request;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .parameter "post"
    .parameter "request"

    .prologue
    .line 268
    iget-object v1, p1, Lcom/baidu/launcher/network/http/HttpParam$Request;->params:Ljava/util/List;

    .line 269
    .local v1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 271
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 272
    .local v0, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {p0, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v0           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    :goto_0
    return-object p0

    .line 273
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private shutdown()V
    .locals 3

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/network/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/baidu/launcher/network/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/network/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/baidu/launcher/network/http/HttpClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static trimString(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 309
    if-nez p0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 312
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/network/http/HttpClient;->mCanceled:Z

    .line 170
    sget-object v0, Lcom/baidu/launcher/network/http/HttpClient;->TAG:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public execute(Lcom/baidu/launcher/network/http/HttpParam$Request;Lcom/baidu/launcher/network/http/HttpClient$Observer;)V
    .locals 17
    .parameter "request"
    .parameter "observer"

    .prologue
    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/network/http/HttpClient;->prepare()V

    .line 89
    const/4 v6, 0x0

    .line 93
    .local v6, finished:Z
    invoke-interface/range {p2 .. p2}, Lcom/baidu/launcher/network/http/HttpClient$Observer;->onStart()V

    .line 95
    sget-object v14, Lcom/baidu/launcher/network/http/HttpParam$Method;->GET:Lcom/baidu/launcher/network/http/HttpParam$Method;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/baidu/launcher/network/http/HttpParam$Request;->method:Lcom/baidu/launcher/network/http/HttpParam$Method;

    if-ne v14, v15, :cond_4

    .line 96
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-direct {v14, v15}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/baidu/launcher/network/http/HttpClient;->setUrlParams(Lorg/apache/http/client/methods/HttpGet;Lcom/baidu/launcher/network/http/HttpParam$Request;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/launcher/network/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 114
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/network/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lcom/baidu/launcher/network/http/HttpClient;->setHttpHeaders(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/baidu/launcher/network/http/HttpParam$Request;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/network/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/baidu/launcher/network/http/HttpClient;->setProxy(Lorg/apache/http/impl/client/DefaultHttpClient;Lcom/baidu/launcher/network/http/HttpParam$Request;)V

    .line 118
    const/high16 v14, -0x8000

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Lcom/baidu/launcher/network/http/HttpClient$Observer;->onSend(II)V

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/network/http/HttpClient;->mHttpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/launcher/network/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v14, v15}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 120
    .local v10, response:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/baidu/launcher/network/http/HttpClient;->mCanceled:Z

    if-nez v14, :cond_2

    .line 122
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 123
    .local v13, statusCode:I
    const/16 v14, 0xc8

    if-eq v13, v14, :cond_1

    const/16 v14, 0xce

    if-ne v13, v14, :cond_2

    .line 126
    :cond_1
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 127
    .local v7, httpEntity:Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_5

    .line 128
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 129
    .local v2, body:Ljava/io/InputStream;
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    long-to-int v3, v14

    .line 131
    .local v3, bodyLength:I
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/baidu/launcher/network/http/HttpClient$Observer;->onStartReceive(I)V

    .line 133
    const/4 v8, 0x0

    .line 134
    .local v8, len:I
    const/16 v14, 0x2800

    new-array v4, v14, [B

    .line 136
    .local v4, buf:[B
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v14, -0x1

    if-eq v8, v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/baidu/launcher/network/http/HttpClient;->mCanceled:Z

    if-nez v14, :cond_5

    .line 137
    move-object/from16 v0, p2

    invoke-interface {v0, v3, v8, v4}, Lcom/baidu/launcher/network/http/HttpClient$Observer;->onReceive(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 144
    .end local v2           #body:Ljava/io/InputStream;
    .end local v3           #bodyLength:I
    .end local v4           #buf:[B
    .end local v7           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v8           #len:I
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #statusCode:I
    :catch_0
    move-exception v5

    .line 145
    .local v5, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 147
    sget-object v14, Lcom/baidu/launcher/network/http/HttpClient;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "send "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/baidu/launcher/network/http/HttpClient;->mCanceled:Z

    if-nez v14, :cond_3

    .line 153
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/network/http/HttpClient;->shutdown()V

    .line 156
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/baidu/launcher/network/http/HttpClient;->mCanceled:Z

    if-eqz v14, :cond_6

    .line 157
    sget-object v14, Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;->Canceled:Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/baidu/launcher/network/http/HttpClient$Observer;->onFinish(Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;)V

    .line 164
    :goto_3
    return-void

    .line 98
    :cond_4
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/baidu/launcher/network/http/HttpParam$Request;->host:Ljava/lang/String;

    invoke-direct {v14, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/baidu/launcher/network/http/HttpClient;->setUrlParams(Lorg/apache/http/client/methods/HttpPost;Lcom/baidu/launcher/network/http/HttpParam$Request;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/launcher/network/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 100
    invoke-interface/range {p2 .. p2}, Lcom/baidu/launcher/network/http/HttpClient$Observer;->getPostData()Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, postdata:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 104
    const/4 v11, 0x0

    .line 106
    .local v11, se:Lorg/apache/http/entity/StringEntity;
    :try_start_2
    new-instance v12, Lorg/apache/http/entity/StringEntity;

    const-string v14, "utf-8"

    invoke-direct {v12, v9, v14}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 107
    .end local v11           #se:Lorg/apache/http/entity/StringEntity;
    .local v12, se:Lorg/apache/http/entity/StringEntity;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/network/http/HttpClient;->mUriRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v14, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v14, v12}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 108
    :catch_1
    move-exception v5

    move-object v11, v12

    .line 109
    .end local v12           #se:Lorg/apache/http/entity/StringEntity;
    .local v5, e:Ljava/io/IOException;
    .restart local v11       #se:Lorg/apache/http/entity/StringEntity;
    :goto_4
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 141
    .end local v5           #e:Ljava/io/IOException;
    .end local v9           #postdata:Ljava/lang/String;
    .end local v11           #se:Lorg/apache/http/entity/StringEntity;
    .restart local v7       #httpEntity:Lorg/apache/http/HttpEntity;
    .restart local v10       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #statusCode:I
    :cond_5
    const/4 v6, 0x1

    goto :goto_2

    .line 148
    .end local v7           #httpEntity:Lorg/apache/http/HttpEntity;
    .end local v10           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #statusCode:I
    :catchall_0
    move-exception v14

    throw v14

    .line 158
    :cond_6
    if-eqz v6, :cond_7

    .line 159
    sget-object v14, Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;->Success:Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/baidu/launcher/network/http/HttpClient$Observer;->onFinish(Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;)V

    goto :goto_3

    .line 161
    :cond_7
    sget-object v14, Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;->Failed:Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/baidu/launcher/network/http/HttpClient$Observer;->onFinish(Lcom/baidu/launcher/network/http/HttpClient$Observer$Reason;)V

    goto :goto_3

    .line 108
    .restart local v9       #postdata:Ljava/lang/String;
    .restart local v11       #se:Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v5

    goto :goto_4
.end method
