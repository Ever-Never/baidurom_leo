.class public Lcom/baidu/launcher/thememanager/network/TransportHttpClient;
.super Ljava/lang/Object;
.source "TransportHttpClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransportHttpClient"


# instance fields
.field httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field proxy:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 38
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 39
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 40
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 41
    const/16 v1, 0x1770

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 42
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 43
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 45
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 47
    return-void
.end method


# virtual methods
.method public sendHttpRequest(Lcom/baidu/launcher/thememanager/network/Request;)[B
    .locals 10
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/network/Request;->getMethodType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "GET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 97
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/network/Request;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 115
    .local v5, req:Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    const/4 v6, 0x0

    .line 119
    .local v6, resEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    iget-object v8, p0, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v8, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 121
    .local v7, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 122
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 123
    .local v4, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 124
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 125
    .local v1, buf:[B
    const/4 v2, -0x1

    .line 126
    .local v2, ch:I
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 127
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 133
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v2           #ch:I
    .end local v4           #is:Ljava/io/InputStream;
    .end local v7           #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v8

    if-eqz v6, :cond_0

    .line 134
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_0
    throw v8

    .line 99
    .end local v5           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v6           #resEntity:Lorg/apache/http/HttpEntity;
    :cond_1
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/network/Request;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v5       #req:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 129
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v2       #ch:I
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v6       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v7       #response:Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 133
    .local v3, data:[B
    if-eqz v6, :cond_3

    .line 134
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_3
    return-object v3
.end method

.method public sendHttpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[B
    .locals 10
    .parameter "method_type"
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v9, "GET"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 61
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v6, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 70
    .local v6, req:Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 74
    .local v7, resEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v9, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 76
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    .line 77
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 78
    .local v5, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 79
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x400

    new-array v1, v9, [B

    .line 80
    .local v1, buf:[B
    const/4 v2, -0x1

    .line 81
    .local v2, ch:I
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    .line 82
    const/4 v9, 0x0

    invoke-virtual {v0, v1, v9, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 87
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #buf:[B
    .end local v2           #ch:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v9

    if-eqz v7, :cond_1

    .line 88
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_1
    throw v9

    .line 63
    .end local v6           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v7           #resEntity:Lorg/apache/http/HttpEntity;
    :cond_2
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v6       #req:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 65
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v9, "utf-8"

    invoke-direct {v4, p3, v9}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .local v4, entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object v9, v6

    .line 66
    check-cast v9, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v9, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 84
    .end local v4           #entity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #buf:[B
    .restart local v2       #ch:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #resEntity:Lorg/apache/http/HttpEntity;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 87
    .local v3, data:[B
    if-eqz v7, :cond_4

    .line 88
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_4
    return-object v3
.end method

.method public setProxy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "host"
    .parameter "port"

    .prologue
    .line 50
    new-instance v0, Lorg/apache/http/HttpHost;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;->proxy:Lorg/apache/http/HttpHost;

    .line 51
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/network/TransportHttpClient;->proxy:Lorg/apache/http/HttpHost;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 52
    return-void
.end method
