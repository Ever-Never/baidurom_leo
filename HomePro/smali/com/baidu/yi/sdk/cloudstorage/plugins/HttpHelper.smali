.class public Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;,
        Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x7530

.field private static final EMPTY_PARAMS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "JavaPCS"

.field private static final T_TIMEOUT:I = 0x36ee80


# instance fields
.field private cookieKey:Ljava/lang/String;

.field private cookieValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->EMPTY_PARAMS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static buildURL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "baseURL"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
        }
    .end annotation

    .prologue
    .line 64
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p1, :cond_0

    .line 65
    sget-object p1, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->EMPTY_PARAMS:Ljava/util/List;

    .line 67
    :cond_0
    const/4 v2, 0x0

    .line 69
    .local v2, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "utf8"

    invoke-direct {v3, p1, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .local v3, entity:Lorg/apache/http/HttpEntity;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 71
    .local v4, url:Ljava/lang/String;
    return-object v4

    .line 72
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #url:Ljava/lang/String;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v1

    .line 73
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    :goto_0
    new-instance v5, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error on buildURL"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 74
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-direct {v5, v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 75
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 76
    .local v0, e:Ljava/io/IOException;
    :goto_1
    new-instance v5, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error on buildURL"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 77
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-direct {v5, v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 75
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    goto :goto_1

    .line 72
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .restart local v3       #entity:Lorg/apache/http/HttpEntity;
    :catch_3
    move-exception v1

    move-object v2, v3

    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    goto :goto_0
.end method

.method private execute(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;
    .locals 9
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 153
    const-string v6, "User-Agent"

    const-string v7, "JavaPCS"

    invoke-virtual {p1, v6, v7}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :try_start_0
    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->cookieKey:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->cookieValue:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 157
    new-instance v5, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v5}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 158
    .local v5, store:Lorg/apache/http/impl/client/BasicCookieStore;
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->cookieKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->cookieValue:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .local v0, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-virtual {v5, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 160
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 161
    .local v1, ctx:Lorg/apache/http/protocol/HttpContext;
    const-string v6, "http.cookie-store"

    invoke-interface {v1, v6, v5}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    invoke-interface {v6, p1, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 166
    .end local v0           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v1           #ctx:Lorg/apache/http/protocol/HttpContext;
    .end local v5           #store:Lorg/apache/http/impl/client/BasicCookieStore;
    .local v3, resp:Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, response:Ljava/lang/String;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_1

    .line 169
    return-object v4

    .line 164
    .end local v3           #resp:Lorg/apache/http/HttpResponse;
    .end local v4           #response:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .restart local v3       #resp:Lorg/apache/http/HttpResponse;
    goto :goto_0

    .line 171
    .restart local v4       #response:Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    .line 172
    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 171
    invoke-direct {v6, v7, v4}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .end local v3           #resp:Lorg/apache/http/HttpResponse;
    .end local v4           #response:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 175
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    new-instance v6, Lorg/apache/http/HttpException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "IOException "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static multipartAddKV(Lorg/apache/http/entity/mime/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "reqEntity"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, body:Lorg/apache/http/entity/mime/content/StringBody;
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v1, p2}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #body:Lorg/apache/http/entity/mime/content/StringBody;
    .local v1, body:Lorg/apache/http/entity/mime/content/StringBody;
    move-object v0, v1

    .line 199
    .end local v1           #body:Lorg/apache/http/entity/mime/content/StringBody;
    .restart local v0       #body:Lorg/apache/http/entity/mime/content/StringBody;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 200
    return-void

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private newHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 4

    .prologue
    .line 182
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/plugins/TrustAllSSLSocketFactory;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 184
    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 185
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 187
    const-wide/32 v2, 0x36ee80

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 188
    return-object v0
.end method


# virtual methods
.method public doGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->execute(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public doGetToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "url"
    .parameter "localFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, request:Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 92
    .local v3, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 93
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .local v1, out:Ljava/io/FileOutputStream;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 95
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 96
    return-void

    .line 98
    .end local v1           #out:Ljava/io/FileOutputStream;
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, response:Ljava/lang/String;
    new-instance v5, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 100
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 99
    invoke-direct {v5, v6, v4}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v3           #resp:Lorg/apache/http/HttpResponse;
    .end local v4           #response:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    new-instance v5, Lorg/apache/http/HttpException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "IOException "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public doPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 115
    .local p2, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p2, :cond_0

    .line 116
    sget-object p2, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->EMPTY_PARAMS:Ljava/util/List;

    .line 118
    :cond_0
    const/4 v1, 0x0

    .line 120
    .local v1, entity:Lorg/apache/http/HttpEntity;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v4, "utf8"

    invoke-direct {v2, p2, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .local v2, entity:Lorg/apache/http/HttpEntity;
    move-object v1, v2

    .line 124
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    :goto_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, request:Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 127
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 128
    invoke-direct {p0, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->execute(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 121
    .end local v3           #request:Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v0

    .line 122
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public doPostMultipart(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter "filePath"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 133
    .local p3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p3, :cond_0

    .line 134
    sget-object p3, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->EMPTY_PARAMS:Ljava/util/List;

    .line 136
    :cond_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, request:Lorg/apache/http/client/methods/HttpPost;
    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 138
    .local v2, reqEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 139
    new-instance v0, Lorg/apache/http/entity/mime/content/FileBody;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 140
    .local v0, bin:Lorg/apache/http/entity/mime/content/FileBody;
    const-string v4, "uploadedfile"

    invoke-virtual {v2, v4, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 143
    .end local v0           #bin:Lorg/apache/http/entity/mime/content/FileBody;
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 146
    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 148
    invoke-direct {p0, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->execute(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 143
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 144
    .local v1, kv:Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->multipartAddKV(Lorg/apache/http/entity/mime/MultipartEntity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->cookieKey:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->cookieValue:Ljava/lang/String;

    .line 51
    return-void
.end method
