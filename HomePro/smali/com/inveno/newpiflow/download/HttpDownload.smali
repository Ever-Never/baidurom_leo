.class public Lcom/inveno/newpiflow/download/HttpDownload;
.super Ljava/lang/Object;
.source "HttpDownload.java"


# static fields
.field public static final ASC:Ljava/lang/String; = "ascend"

.field public static final CONNECT_TIMEOUT_IMG:I = 0x7530

.field public static final DESC:Ljava/lang/String; = "descend"

.field public static final METHOD_GET:I = 0x1

.field public static final METHOD_POST:I = 0x2

.field public static final READ_TIMEOUT_IMG:I = 0x7530

.field private static final RETRY_TIME:I = 0x3

.field private static final TIMEOUT_CONNECTION:I = 0x2710

.field private static final TIMEOUT_SOCKET:I = 0x2710

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static androidHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 9
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
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    .local p1, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const-string v6, "pvp"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u8bf7\u6c42url\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "UTF-8"

    invoke-direct {v1, p1, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 75
    .local v1, httpEntity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 76
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 77
    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 78
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 79
    .local v5, statusCode:I
    const-string v6, "pvp"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "statusCode :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 81
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-static {v6, v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, result:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 83
    .end local v4           #result:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcom/inveno/newpiflow/download/HttpDownload;->hasHttpConnectionBug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    :cond_0
    return-void
.end method

.method public static downBitmap(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 5
    .parameter "interfaceUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {}, Lcom/inveno/newpiflow/download/HttpDownload;->getClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 94
    .local v0, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 96
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 100
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v2

    .restart local v2       #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/util/ArrayList;I)[B
    .locals 2
    .parameter "url"
    .parameter
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;I)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    .local p1, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v0, 0x0

    check-cast v0, [B

    .line 315
    .local v0, bytes:[B
    invoke-static {p0, p1, p2}, Lcom/inveno/newpiflow/download/HttpDownload;->getEntity(Ljava/lang/String;Ljava/util/List;I)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 316
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 317
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 318
    :cond_0
    return-object v0
.end method

.method private static getClient()Lorg/apache/http/client/HttpClient;
    .locals 3

    .prologue
    const/16 v2, 0x2710

    .line 105
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 106
    .local v1, httpParams:Lorg/apache/http/params/BasicHttpParams;
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 108
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 110
    .local v0, client:Lorg/apache/http/client/HttpClient;
    return-object v0
.end method

.method private static getEntity(Ljava/lang/String;Ljava/util/List;I)Lorg/apache/http/HttpEntity;
    .locals 10
    .parameter "url"
    .parameter
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;I)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    .local p1, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v0, 0x0

    .line 214
    .local v0, entity:Lorg/apache/http/HttpEntity;
    const/4 v3, 0x0

    .line 216
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 218
    .local v1, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    .line 219
    const-string v8, "http.connection.timeout"

    const/16 v9, 0x2710

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 218
    invoke-interface {v7, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 220
    packed-switch p2, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    invoke-virtual {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 246
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    .line 248
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 250
    :cond_1
    return-object v0

    .line 222
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .local v6, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 224
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 229
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 231
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u8bf7\u6c42\u7f51\u7edcurl\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 232
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    .end local v3           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 233
    .restart local v3       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 225
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 226
    .local v2, pair:Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 227
    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x26

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 235
    .end local v2           #pair:Lorg/apache/http/message/BasicNameValuePair;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :pswitch_1
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    .end local v3           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v3       #request:Lorg/apache/http/client/methods/HttpUriRequest;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u8bf7\u6c42\u7f51\u7edcurl\uff1a"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 237
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 238
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 239
    const-string v7, "UTF-8"

    .line 238
    invoke-direct {v4, p1, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .local v4, requestEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    move-object v7, v3

    .line 240
    check-cast v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v7, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInputStream(Ljava/lang/String;Ljava/util/ArrayList;I)Ljava/io/InputStream;
    .locals 2
    .parameter "url"
    .parameter
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;I)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    .local p1, pairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v1, 0x0

    .line 267
    .local v1, in:Ljava/io/InputStream;
    invoke-static {p0, p1, p2}, Lcom/inveno/newpiflow/download/HttpDownload;->getEntity(Ljava/lang/String;Ljava/util/List;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 268
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 270
    :cond_0
    return-object v1
.end method

.method private static getInputStreamFromEntity(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 1
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, in:Ljava/io/InputStream;
    if-eqz p0, :cond_0

    .line 277
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 278
    :cond_0
    return-object v0
.end method

.method public static getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    const-string v1, ""

    .line 169
    .local v1, jsonStr:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 170
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 171
    .local v0, br:Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 174
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 177
    .end local v0           #br:Ljava/io/BufferedReader;
    :cond_0
    return-object v1
.end method

.method public static hasHttpConnectionBug()Z
    .locals 2

    .prologue
    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requestJsonStr(Ljava/lang/String;Ljava/util/List;I)Ljava/lang/String;
    .locals 4
    .parameter "url"
    .parameter
    .parameter "method"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    .local p1, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    move-object v1, p0

    .line 295
    .local v1, fullUrl:Ljava/lang/String;
    invoke-static {v1, p1, p2}, Lcom/inveno/newpiflow/download/HttpDownload;->getEntity(Ljava/lang/String;Ljava/util/List;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 297
    .local v0, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v0}, Lcom/inveno/newpiflow/download/HttpDownload;->getInputStreamFromEntity(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/newpiflow/download/HttpDownload;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, result:Ljava/lang/String;
    return-object v2
.end method


# virtual methods
.method public downLoadInterfaceData(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .parameter "interfaceUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7530

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, in:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 146
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-static {p1}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 148
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0           #connection:Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 149
    .restart local v0       #connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 150
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 151
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 152
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 154
    .end local v2           #url:Ljava/net/URL;
    :cond_0
    return-object v1
.end method
