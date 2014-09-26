.class public Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
.super Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;
.source "BaiduPCSPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;,
        Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;,
        Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;,
        Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x7530

.field private static final ORDER_BY_NAME:Ljava/lang/String; = "name"

.field private static final ORDER_BY_SIZE:Ljava/lang/String; = "size"

.field private static final ORDER_BY_TIME:Ljava/lang/String; = "time"

.field private static final ORDER_DESC:Ljava/lang/String; = "desc"

.field private static final ORDER_SC:Ljava/lang/String; = "sc"

.field private static final PCS_HOST:Ljava/lang/String; = "https://pcs.baidu.com/"

.field private static final REQUEST_URL_PREFIX_FILE:Ljava/lang/String; = "rest/2.0/pcs/file"

.field private static final TAG:Ljava/lang/String; = "baiduPCS"

.field private static final T_TIMEOUT:I = 0x36ee80


# instance fields
.field private final mHttpHelper:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "root"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/CloudStorageAPI;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;

    invoke-direct {v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mHttpHelper:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;

    .line 79
    return-void
.end method

.method private basename(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 186
    const-string v2, ".*?([^/]*)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 187
    .local v0, BASENAME:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 188
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 191
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t parse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private execute(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;
    .locals 6
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getHttpContextWithCookie()Lorg/apache/http/protocol/HttpContext;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 97
    .local v1, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, response:Ljava/lang/String;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 100
    const-string v3, "baiduPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Execute return response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v2

    .line 103
    :cond_0
    new-instance v3, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-direct {v3, v4, v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1           #resp:Lorg/apache/http/HttpResponse;
    .end local v2           #response:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 107
    new-instance v3, Lorg/apache/http/HttpException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 4
    .parameter "obj"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    .local v2, val:Ljava/lang/Object;
    const-wide/16 v0, 0x0

    .line 173
    .local v0, ret:J
    if-eqz v2, :cond_0

    .line 174
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 175
    check-cast v2, Ljava/lang/Number;

    .end local v2           #val:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 182
    :cond_0
    :goto_0
    return-wide v0

    .line 176
    .restart local v2       #val:Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 179
    check-cast v2, Ljava/lang/String;

    .end local v2           #val:Ljava/lang/Object;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFileEntryFromJsonObject(Lorg/json/JSONObject;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 5
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    invoke-direct {v0}, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;-><init>()V

    .line 197
    .local v0, entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    const-string v1, "path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->path:Ljava/lang/String;

    .line 198
    iget-object v1, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->path:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->basename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->fileName:Ljava/lang/String;

    .line 199
    const-string v1, "md5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->md5:Ljava/lang/String;

    .line 200
    const-string v1, "isdir"

    invoke-direct {p0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->isDir:I

    .line 201
    const-string v1, "size"

    invoke-direct {p0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->size:J

    .line 202
    const-string v1, "mtime"

    invoke-direct {p0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->mtime:J

    .line 203
    const-string v1, "ctime"

    invoke-direct {p0, p1, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->ctime:J

    .line 204
    return-object v0

    .line 200
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getHttpContextWithCookie()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method private httpGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v2, 0x0

    .line 114
    .local v2, result:Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->buildURL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 115
    const-string v3, "baiduPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http get: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, request:Lorg/apache/http/client/methods/HttpGet;
    iget v3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v4, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v4}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 119
    const-string v3, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "BDUSS="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-direct {p0, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->execute(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v2

    .line 122
    const/4 v3, 0x0

    iput v3, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    .end local v1           #request:Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    return-object v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Lorg/apache/http/HttpException;
    invoke-virtual {v0}, Lorg/apache/http/HttpException;->printStackTrace()V

    .line 125
    const/4 v3, -0x2

    iput v3, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_0

    .line 126
    .end local v0           #e:Lorg/apache/http/HttpException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;->printStackTrace()V

    .line 128
    const/16 v3, 0xd1

    iput v3, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_0

    .line 129
    .end local v0           #e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    :catch_2
    move-exception v0

    .line 130
    .local v0, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;
    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;->printStackTrace()V

    .line 131
    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;->responseBody:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseResultByResponse(Ljava/lang/String;)I

    move-result v3

    iput v3, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 132
    iget-object v2, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;->responseBody:Ljava/lang/String;

    goto :goto_0
.end method

.method private httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, qs_params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    const/4 v5, 0x0

    .line 140
    .local v5, response:Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->buildURL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object p1

    .line 142
    const/4 v2, 0x0

    .line 144
    .local v2, entity:Lorg/apache/http/HttpEntity;
    :try_start_1
    new-instance v3, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "utf8"

    invoke-direct {v3, p2, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException; {:try_start_1 .. :try_end_1} :catch_3

    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .local v3, entity:Lorg/apache/http/HttpEntity;
    move-object v2, v3

    .line 148
    .end local v3           #entity:Lorg/apache/http/HttpEntity;
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    :goto_0
    :try_start_2
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 149
    .local v4, request:Lorg/apache/http/client/methods/HttpPost;
    iget v6, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v7, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v7}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 150
    const-string v6, "Cookie"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "BDUSS="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Lorg/apache/http/Header;)V

    .line 153
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 154
    invoke-direct {p0, v4}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->execute(Lorg/apache/http/client/methods/HttpRequestBase;)Ljava/lang/String;

    move-result-object v5

    .line 155
    const/4 v6, 0x0

    iput v6, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 167
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v4           #request:Lorg/apache/http/client/methods/HttpPost;
    :goto_1
    return-object v5

    .line 145
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v1

    .line 146
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 156
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v0

    .line 157
    .local v0, e:Lorg/apache/http/HttpException;
    invoke-virtual {v0}, Lorg/apache/http/HttpException;->printStackTrace()V

    .line 158
    const/4 v6, -0x2

    iput v6, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_1

    .line 159
    .end local v0           #e:Lorg/apache/http/HttpException;
    :catch_2
    move-exception v0

    .line 160
    .local v0, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;->printStackTrace()V

    .line 161
    const/16 v6, 0xd1

    iput v6, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_1

    .line 162
    .end local v0           #e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    :catch_3
    move-exception v0

    .line 163
    .local v0, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;
    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;->printStackTrace()V

    .line 164
    iget-object v6, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;->responseBody:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseResultByResponse(Ljava/lang/String;)I

    move-result v6

    iput v6, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 165
    iget-object v5, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;->responseBody:Ljava/lang/String;

    goto :goto_1
.end method

.method private newHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 4

    .prologue
    .line 537
    invoke-static {}, Lcom/baidu/yi/sdk/cloudstorage/plugins/TrustAllSSLSocketFactory;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 539
    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 540
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x7530

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 542
    const-wide/32 v2, 0x36ee80

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 543
    return-object v0
.end method

.method private parseAuthFromJSON(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    .locals 6
    .parameter "responseBody"
    .parameter "code"

    .prologue
    .line 1076
    const/4 v3, 0x0

    .line 1077
    .local v3, obj:Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 1079
    .local v0, auth:Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    .end local v3           #obj:Lorg/json/JSONObject;
    .local v4, obj:Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;

    invoke-direct {v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1081
    .end local v0           #auth:Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    .local v1, auth:Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    :try_start_2
    const-string v5, "access_token"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;->token:Ljava/lang/String;

    .line 1082
    const-string v5, "refresh_token"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;->refresh_token:Ljava/lang/String;

    .line 1083
    iget v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    iput v5, v1, Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;->errorCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .end local v1           #auth:Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    .restart local v0       #auth:Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    move-object v3, v4

    .line 1088
    .end local v4           #obj:Lorg/json/JSONObject;
    .restart local v3       #obj:Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 1084
    :catch_0
    move-exception v2

    .line 1085
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1086
    const/4 v0, 0x0

    goto :goto_0

    .line 1084
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #obj:Lorg/json/JSONObject;
    .restart local v4       #obj:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #obj:Lorg/json/JSONObject;
    .restart local v3       #obj:Lorg/json/JSONObject;
    goto :goto_1

    .end local v0           #auth:Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    .end local v3           #obj:Lorg/json/JSONObject;
    .restart local v1       #auth:Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    .restart local v4       #obj:Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1           #auth:Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    .restart local v0       #auth:Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    move-object v3, v4

    .end local v4           #obj:Lorg/json/JSONObject;
    .restart local v3       #obj:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private parseEntryFromJSON(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 7
    .parameter "responseBody"
    .parameter "code"

    .prologue
    .line 978
    const/4 v3, 0x0

    .line 979
    .local v3, obj:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 981
    .local v1, entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    .end local v3           #obj:Lorg/json/JSONObject;
    .local v4, obj:Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    invoke-direct {v2}, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 983
    .end local v1           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .local v2, entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    :try_start_2
    const-string v5, "path"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->path:Ljava/lang/String;

    .line 984
    const-string v5, "md5"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->md5:Ljava/lang/String;

    .line 985
    const-string v5, "size"

    invoke-direct {p0, v4, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->size:J

    .line 986
    const-string v5, "ctime"

    invoke-direct {p0, v4, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->ctime:J

    .line 987
    const-string v5, "mtime"

    invoke-direct {p0, v4, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->mtime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .end local v2           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .restart local v1       #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    move-object v3, v4

    .line 992
    .end local v4           #obj:Lorg/json/JSONObject;
    .restart local v3       #obj:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 988
    :catch_0
    move-exception v0

    .line 989
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 990
    const/4 v1, 0x0

    goto :goto_0

    .line 988
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #obj:Lorg/json/JSONObject;
    .restart local v4       #obj:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #obj:Lorg/json/JSONObject;
    .restart local v3       #obj:Lorg/json/JSONObject;
    goto :goto_1

    .end local v1           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .end local v3           #obj:Lorg/json/JSONObject;
    .restart local v2       #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .restart local v4       #obj:Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .restart local v1       #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    move-object v3, v4

    .end local v4           #obj:Lorg/json/JSONObject;
    .restart local v3       #obj:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private parseEntryListFromJsonString(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/util/ArrayList;
    .locals 9
    .parameter "response"
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, -0x4

    .line 211
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .local v6, rst:Lorg/json/JSONObject;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;>;"
    :try_start_1
    const-string v7, "list"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    .line 221
    .local v5, rawList:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 226
    const/4 v7, 0x0

    iput v7, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 232
    .end local v2           #i:I
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;>;"
    .end local v5           #rawList:Lorg/json/JSONArray;
    .end local v6           #rst:Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 214
    iput v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 215
    const/4 v4, 0x0

    goto :goto_1

    .line 222
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v2       #i:I
    .restart local v4       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;>;"
    .restart local v5       #rawList:Lorg/json/JSONArray;
    .restart local v6       #rst:Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 223
    .local v3, item:Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getFileEntryFromJsonObject(Lorg/json/JSONObject;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    move-result-object v1

    .line 224
    .local v1, entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v1           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .end local v2           #i:I
    .end local v3           #item:Lorg/json/JSONObject;
    .end local v5           #rawList:Lorg/json/JSONArray;
    :catch_1
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    iput v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 230
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private parseMetaFromJSON(Ljava/lang/String;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 15
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1167
    const/4 v6, 0x0

    .line 1169
    .local v6, rawList:Lorg/json/JSONArray;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v7, rst:Lorg/json/JSONObject;
    if-eqz v7, :cond_0

    .line 1171
    const-string v8, "list"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lorg/json/JSONArray;

    move-object v6, v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :cond_0
    const/4 v3, 0x0

    .line 1179
    .local v3, entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 1181
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 1182
    .local v5, obj:Lorg/json/JSONObject;
    new-instance v4, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    invoke-direct {v4}, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1183
    .end local v3           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .local v4, entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    :try_start_2
    const-string v8, "path"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v4, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->path:Ljava/lang/String;

    .line 1184
    iget-object v8, v4, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->path:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->basename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->fileName:Ljava/lang/String;

    .line 1185
    const-string v8, "block_list"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 1186
    .local v1, blockList:Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 1187
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v4, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->md5:Ljava/lang/String;

    .line 1191
    :goto_0
    const-string v8, "isdir"

    invoke-direct {p0, v5, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v8, v11, v13

    if-nez v8, :cond_3

    move v8, v9

    :goto_1
    iput v8, v4, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->isDir:I

    .line 1193
    const-string v8, "size"

    invoke-direct {p0, v5, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->size:J

    .line 1194
    const-string v8, "mtime"

    invoke-direct {p0, v5, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->mtime:J

    .line 1195
    const-string v8, "ctime"

    invoke-direct {p0, v5, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->ctime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v4

    .line 1203
    .end local v1           #blockList:Lorg/json/JSONArray;
    .end local v4           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .end local v5           #obj:Lorg/json/JSONObject;
    .end local v7           #rst:Lorg/json/JSONObject;
    :cond_1
    :goto_2
    return-object v3

    .line 1172
    :catch_0
    move-exception v2

    .line 1173
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 1174
    const-string v8, "baiduPCS"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ParseException on parse FileList "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1189
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #blockList:Lorg/json/JSONArray;
    .restart local v4       #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .restart local v5       #obj:Lorg/json/JSONObject;
    .restart local v7       #rst:Lorg/json/JSONObject;
    :cond_2
    const/4 v8, 0x0

    :try_start_3
    iput-object v8, v4, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;->md5:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1196
    .end local v1           #blockList:Lorg/json/JSONArray;
    :catch_1
    move-exception v2

    move-object v3, v4

    .line 1197
    .end local v4           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .end local v5           #obj:Lorg/json/JSONObject;
    .local v2, e:Ljava/lang/Exception;
    .restart local v3       #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1198
    const-string v8, "baiduPCS"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Parse exception on "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/4 v3, 0x0

    goto :goto_2

    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .restart local v1       #blockList:Lorg/json/JSONArray;
    .restart local v4       #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .restart local v5       #obj:Lorg/json/JSONObject;
    :cond_3
    move v8, v10

    .line 1191
    goto :goto_1

    .line 1196
    .end local v1           #blockList:Lorg/json/JSONArray;
    .end local v4           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .end local v5           #obj:Lorg/json/JSONObject;
    .restart local v3       #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    :catch_2
    move-exception v2

    goto :goto_3
.end method

.method private parseOfflineInfoFromJSON(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
    .locals 6
    .parameter "responseBody"
    .parameter "offlineId"
    .parameter "code"

    .prologue
    .line 1008
    const/4 v4, 0x0

    .line 1010
    .local v4, offlineInfo:Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
    if-eqz p1, :cond_0

    .line 1013
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1015
    .local v3, jo:Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 1017
    const-string v5, "task_info"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1018
    const-string v5, "task_info"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1019
    .local v1, j:Lorg/json/JSONObject;
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1020
    .local v2, jj:Lorg/json/JSONObject;
    invoke-virtual {p0, v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseOfflineInfoFromJSON(Lorg/json/JSONObject;)Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;

    move-result-object v4

    .line 1021
    iput-object p2, v4, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->taskid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    .end local v1           #j:Lorg/json/JSONObject;
    .end local v2           #jj:Lorg/json/JSONObject;
    .end local v3           #jo:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v4

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1027
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private parseResultByResponse(Ljava/lang/String;)I
    .locals 7
    .parameter "response"

    .prologue
    .line 1141
    const-string v4, "baiduPCS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Parse response for error message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    const/16 v0, -0x63

    .line 1145
    .local v0, code:I
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1146
    .local v3, obj:Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 1147
    const-string v4, "error_code"

    invoke-direct {p0, v3, v4}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 1148
    .local v2, error:I
    const-string v4, "baiduPCS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error code from PCS: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    const/16 v4, 0x6e

    if-eq v2, v4, :cond_0

    const/16 v4, 0x7941

    if-lt v2, v4, :cond_2

    const/16 v4, 0x7945

    if-lt v4, v2, :cond_2

    .line 1151
    :cond_0
    const/16 v0, 0xb

    .line 1163
    .end local v2           #error:I
    .end local v3           #obj:Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return v0

    .line 1152
    .restart local v2       #error:I
    .restart local v3       #obj:Lorg/json/JSONObject;
    :cond_2
    const/16 v4, 0x6f

    if-ne v2, v4, :cond_3

    .line 1153
    const/16 v0, 0xc

    .line 1154
    goto :goto_0

    :cond_3
    const v4, 0x8cad

    if-ne v2, v4, :cond_1

    .line 1155
    const/16 v0, 0x71

    goto :goto_0

    .line 1158
    .end local v2           #error:I
    .end local v3           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1160
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseTaskidFromJSON(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;
    .locals 5
    .parameter "responseBody"
    .parameter "code"

    .prologue
    .line 996
    const/4 v1, 0x0

    .line 997
    .local v1, obj:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 999
    .local v3, taskid:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    .end local v1           #obj:Lorg/json/JSONObject;
    .local v2, obj:Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "task_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 1004
    .end local v2           #obj:Lorg/json/JSONObject;
    .restart local v1       #obj:Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1001
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #obj:Lorg/json/JSONObject;
    .restart local v2       #obj:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #obj:Lorg/json/JSONObject;
    .restart local v1       #obj:Lorg/json/JSONObject;
    goto :goto_1
.end method


# virtual methods
.method public changeToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;
    .locals 14
    .parameter "bduss"
    .parameter "apiKey"
    .parameter "secretKey"
    .parameter "code"

    .prologue
    .line 936
    const/4 v2, 0x0

    .line 937
    .local v2, authResult:Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;
    const/4 v1, 0x0

    .line 938
    .local v1, access_token:Ljava/lang/String;
    const-string v10, "https://openapi.baidu.com/oauth/2.0/token"

    .line 939
    .local v10, url:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 940
    .local v5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "grant_type"

    const-string v13, "bduss"

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "bduss"

    invoke-direct {v11, v12, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 942
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "client_id"

    move-object/from16 v0, p2

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "client_secret"

    move-object/from16 v0, p3

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "scope"

    const-string v13, "netdisk"

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    const/4 v7, 0x0

    .line 948
    .local v7, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {v10, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->buildURL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 949
    const-string v11, "baiduPCS"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "url is "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 951
    .local v6, request:Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 952
    .local v3, client:Lorg/apache/http/client/HttpClient;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getHttpContextWithCookie()Lorg/apache/http/protocol/HttpContext;

    move-result-object v11

    invoke-interface {v3, v6, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 953
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 954
    .local v9, status:I
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    .line 955
    .local v8, responseString:Ljava/lang/String;
    const-string v11, "baiduPCS"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "changeToken complete, status: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", response: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 956
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 955
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/16 v11, 0xc8

    if-ne v9, v11, :cond_0

    .line 958
    const/4 v11, 0x0

    move-object/from16 v0, p4

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 959
    move-object/from16 v0, p4

    invoke-direct {p0, v8, v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseAuthFromJSON(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;

    move-result-object v2

    .line 960
    iget-object v1, v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthResult;->token:Ljava/lang/String;

    .line 974
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v6           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #responseString:Ljava/lang/String;
    .end local v9           #status:I
    :goto_0
    return-object v1

    .line 962
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v6       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v8       #responseString:Ljava/lang/String;
    .restart local v9       #status:I
    :cond_0
    invoke-direct {p0, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseResultByResponse(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p4

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_0
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 964
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v6           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v8           #responseString:Ljava/lang/String;
    .end local v9           #status:I
    :catch_0
    move-exception v4

    .line 965
    .local v4, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    invoke-virtual {v4}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;->printStackTrace()V

    .line 966
    const/16 v11, 0xd1

    move-object/from16 v0, p4

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_0

    .line 967
    .end local v4           #e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    :catch_1
    move-exception v4

    .line 968
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 969
    const/16 v11, 0xd1

    move-object/from16 v0, p4

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_0

    .line 970
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v4

    .line 971
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 972
    const/4 v11, -0x3

    move-object/from16 v0, p4

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)V
    .locals 6
    .parameter "remotePath"
    .parameter "code"

    .prologue
    .line 1094
    if-nez p1, :cond_0

    .line 1095
    const/4 v3, -0x1

    iput v3, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 1113
    :goto_0
    return-void

    .line 1099
    :cond_0
    const-string v2, "https://pcs.baidu.com/rest/2.0/pcs/file"

    .line 1101
    .local v2, url:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    .local v0, qs_params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "method"

    const-string v5, "delete"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    iget v3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v4, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v4}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1104
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "app_id"

    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAppId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    :goto_1
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "path"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    invoke-direct {p0, v2, v0, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, response:Ljava/lang/String;
    goto :goto_0

    .line 1106
    .end local v1           #response:Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "access_token"

    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getFile(Ljava/lang/String;Ljava/io/OutputStream;JJLcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 11
    .parameter "remotePath"
    .parameter "os"
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .parameter "code"

    .prologue
    .line 479
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p7, :cond_1

    .line 480
    :cond_0
    const/4 v8, -0x1

    move-object/from16 v0, p8

    iput v8, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 481
    const/4 v8, 0x0

    .line 532
    :goto_0
    return-object v8

    .line 484
    :cond_1
    const-string v7, "https://pcs.baidu.com/rest/2.0/pcs/file"

    .line 486
    .local v7, url:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "method"

    const-string v10, "download"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget v8, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v9, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v9}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 489
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "app_id"

    iget-object v10, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAppId:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    :goto_1
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "path"

    invoke-direct {v8, v9, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :try_start_0
    invoke-static {v7, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->buildURL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 498
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 499
    .local v4, request:Lorg/apache/http/client/methods/HttpGet;
    iget v8, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v9, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v9}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 500
    const-string v8, "Cookie"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "BDUSS="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_2
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 504
    .local v1, client:Lorg/apache/http/client/HttpClient;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getHttpContextWithCookie()Lorg/apache/http/protocol/HttpContext;

    move-result-object v8

    invoke-interface {v1, v4, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 505
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_4

    .line 506
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseResultByResponse(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p8

    iput v8, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_0
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 532
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 491
    :cond_3
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "access_token"

    iget-object v10, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 508
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v4       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_1
    new-instance v6, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;

    invoke-direct {v6, p0, v4, v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V

    .line 509
    .local v6, stream:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;
    move-object/from16 v0, p7

    invoke-virtual {v6, p2, v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;->copyStreamToOutput(Ljava/io/OutputStream;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;)V

    .line 510
    const-string v8, "baiduPCS"

    const-string v9, "Copy to output stream complete"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v8, 0x0

    move-object/from16 v0, p8

    iput v8, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_1
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_2

    .line 513
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #stream:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CloudInputStream;
    :catch_0
    move-exception v2

    .line 514
    .local v2, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    invoke-virtual {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;->printStackTrace()V

    .line 515
    const/16 v8, 0xd1

    move-object/from16 v0, p8

    iput v8, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 516
    .end local v2           #e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    :catch_1
    move-exception v2

    .line 517
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 518
    const/16 v8, 0xd1

    move-object/from16 v0, p8

    iput v8, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 519
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v2

    .line 520
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 521
    const/4 v8, -0x3

    move-object/from16 v0, p8

    iput v8, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 522
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 523
    .local v2, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;
    invoke-virtual {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;->printStackTrace()V

    .line 524
    iget v8, v2, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;->errorCode:I

    move-object/from16 v0, p8

    iput v8, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 525
    .end local v2           #e:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;
    :catch_4
    move-exception v2

    .line 526
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 527
    const/16 v8, -0x63

    move-object/from16 v0, p8

    iput v8, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2
.end method

.method public getFile(Ljava/lang/String;Ljava/io/OutputStream;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 9
    .parameter "remotePath"
    .parameter "os"
    .parameter "listener"
    .parameter "code"

    .prologue
    const-wide/16 v3, 0x0

    .line 548
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, v3

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getFile(Ljava/lang/String;Ljava/io/OutputStream;JJLcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    move-result-object v0

    return-object v0
.end method

.method public getMeta(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 6
    .parameter "remotePath"
    .parameter "code"

    .prologue
    .line 1117
    if-nez p1, :cond_0

    .line 1118
    const/4 v3, -0x1

    iput v3, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 1119
    const/4 v3, 0x0

    .line 1136
    :goto_0
    return-object v3

    .line 1122
    :cond_0
    const-string v2, "https://pcs.baidu.com/rest/2.0/pcs/file"

    .line 1124
    .local v2, url:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1125
    .local v0, qs_params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "method"

    const-string v5, "meta"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1126
    iget v3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v4, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v4}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1127
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "app_id"

    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAppId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    :goto_1
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "path"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1134
    invoke-direct {p0, v2, v0, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;

    move-result-object v1

    .line 1136
    .local v1, response:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseMetaFromJSON(Ljava/lang/String;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    move-result-object v3

    goto :goto_0

    .line 1129
    .end local v1           #response:Ljava/lang/String;
    :cond_1
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "access_token"

    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getOfflineInfo(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
    .locals 12
    .parameter "taskid"
    .parameter "remotePath"
    .parameter "code"

    .prologue
    .line 881
    const/4 v2, 0x0

    .line 882
    .local v2, offlineInfo:Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 883
    :cond_0
    const/4 v9, -0x1

    iput v9, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 884
    const/4 v9, 0x0

    .line 931
    :goto_0
    return-object v9

    .line 887
    :cond_1
    const-string v8, "https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl"

    .line 889
    .local v8, url:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "method"

    const-string v11, "query_task"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    iget v9, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v10, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v10}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 892
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "app_id"

    iget-object v11, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAppId:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 897
    :goto_1
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "task_ids"

    invoke-direct {v9, v10, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "op_type"

    const-string v11, "1"

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    const-string v9, "baiduPCS"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "offlineId: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", token: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v5, 0x0

    .line 903
    .local v5, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {v8, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->buildURL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 904
    const-string v9, "baiduPCS"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "url is "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 906
    .local v4, request:Lorg/apache/http/client/methods/HttpPost;
    iget v9, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v10, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v10}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 907
    const-string v9, "Cookie"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "BDUSS="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :cond_2
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 910
    .local v0, client:Lorg/apache/http/client/HttpClient;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getHttpContextWithCookie()Lorg/apache/http/protocol/HttpContext;

    move-result-object v9

    invoke-interface {v0, v4, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 911
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 912
    .local v7, status:I
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 913
    .local v6, responseString:Ljava/lang/String;
    const-string v9, "baiduPCS"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "offlineInfo complete, status: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", response: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 914
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 913
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/16 v9, 0xc8

    if-ne v7, v9, :cond_4

    .line 916
    const/4 v9, 0x0

    iput v9, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 917
    invoke-direct {p0, v6, p1, p3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseOfflineInfoFromJSON(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
    :try_end_0
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #responseString:Ljava/lang/String;
    .end local v7           #status:I
    :goto_2
    move-object v9, v2

    .line 931
    goto/16 :goto_0

    .line 894
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    :cond_3
    new-instance v9, Lorg/apache/http/message/BasicNameValuePair;

    const-string v10, "access_token"

    iget-object v11, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 919
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v4       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #responseString:Ljava/lang/String;
    .restart local v7       #status:I
    :cond_4
    :try_start_1
    invoke-direct {p0, v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseResultByResponse(Ljava/lang/String;)I

    move-result v9

    iput v9, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_1
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 921
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #responseString:Ljava/lang/String;
    .end local v7           #status:I
    :catch_0
    move-exception v1

    .line 922
    .local v1, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    invoke-virtual {v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;->printStackTrace()V

    .line 923
    const/16 v9, 0xd1

    iput v9, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 924
    .end local v1           #e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    :catch_1
    move-exception v1

    .line 925
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 926
    const/16 v9, 0xd1

    iput v9, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 927
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 928
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 929
    const/4 v9, -0x3

    iput v9, p3, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2
.end method

.method public getPluginName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "baiduPCS"

    return-object v0
.end method

.method public getQuota(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    .locals 12
    .parameter "remotePath"
    .parameter "code"

    .prologue
    const/4 v11, 0x0

    .line 1208
    const-string v7, "https://pcs.baidu.com/rest/2.0/pcs/quota"

    .line 1210
    .local v7, url:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    .local v5, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "method"

    const-string v10, "info"

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    iget v8, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v9, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v9}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 1213
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "app_id"

    iget-object v10, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAppId:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1219
    :goto_0
    invoke-direct {p0, v7, v5, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;

    move-result-object v6

    .line 1220
    .local v6, response:Ljava/lang/String;
    iget v8, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    if-nez v8, :cond_0

    if-nez v6, :cond_2

    .line 1237
    :cond_0
    :goto_1
    return-object v11

    .line 1215
    .end local v6           #response:Ljava/lang/String;
    :cond_1
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "access_token"

    iget-object v10, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1224
    .restart local v6       #response:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    .line 1225
    .local v3, obj:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 1227
    .local v1, info:Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1228
    .end local v3           #obj:Lorg/json/JSONObject;
    .local v4, obj:Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;

    invoke-direct {v2}, Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1229
    .end local v1           #info:Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    .local v2, info:Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    :try_start_2
    const-string v8, "baidu"

    iput-object v8, v2, Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;->cloud:Ljava/lang/String;

    .line 1230
    iput-object p1, v2, Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;->path:Ljava/lang/String;

    .line 1231
    const-string v8, "quota"

    invoke-direct {p0, v4, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;->quota:J

    .line 1232
    const-string v8, "used"

    invoke-direct {p0, v4, v8}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getAsLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;->used:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .end local v2           #info:Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    .restart local v1       #info:Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    move-object v3, v4

    .line 1233
    .end local v4           #obj:Lorg/json/JSONObject;
    .restart local v3       #obj:Lorg/json/JSONObject;
    goto :goto_1

    :catch_0
    move-exception v0

    .line 1234
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1235
    const/4 v1, 0x0

    goto :goto_1

    .line 1233
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #obj:Lorg/json/JSONObject;
    .restart local v4       #obj:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4           #obj:Lorg/json/JSONObject;
    .restart local v3       #obj:Lorg/json/JSONObject;
    goto :goto_2

    .end local v1           #info:Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    .end local v3           #obj:Lorg/json/JSONObject;
    .restart local v2       #info:Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    .restart local v4       #obj:Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #info:Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    .restart local v1       #info:Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;
    move-object v3, v4

    .end local v4           #obj:Lorg/json/JSONObject;
    .restart local v3       #obj:Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public listDirectory(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/util/ArrayList;
    .locals 8
    .parameter "remotePath"
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 258
    iget-object v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 259
    const/16 v5, 0xb

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 291
    :cond_0
    :goto_0
    return-object v4

    .line 263
    :cond_1
    if-nez p1, :cond_2

    .line 264
    const/4 v5, -0x1

    iput v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_0

    .line 268
    :cond_2
    const-string v3, "https://pcs.baidu.com/rest/2.0/pcs/file"

    .line 269
    .local v3, url:Ljava/lang/String;
    const-string v0, "0-100"

    .line 270
    .local v0, limit:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "method"

    const-string v7, "list"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget v5, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v6, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v6}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 273
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "app_id"

    iget-object v7, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAppId:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :goto_1
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "path"

    invoke-direct {v5, v6, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    const-string v5, "https://pcs.baidu.com/rest/2.0/pcs/file"

    invoke-direct {p0, v5, v1, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->httpGet(Ljava/lang/String;Ljava/util/ArrayList;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, responseBody:Ljava/lang/String;
    iget v5, p2, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    if-nez v5, :cond_0

    .line 287
    const-string v5, "baiduPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "List directory success with token: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz v2, :cond_0

    .line 291
    invoke-direct {p0, v2, p2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseEntryListFromJsonString(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 275
    .end local v2           #responseBody:Ljava/lang/String;
    :cond_3
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "access_token"

    iget-object v7, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public offlineFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;
    .locals 14
    .parameter "remotePath"
    .parameter "sourceUrl"
    .parameter "code"

    .prologue
    .line 825
    const/4 v8, 0x0

    .line 826
    .local v8, taskid:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    if-nez p1, :cond_1

    .line 827
    :cond_0
    const/4 v11, -0x1

    move-object/from16 v0, p3

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    move-object v9, v8

    .line 876
    .end local v8           #taskid:Ljava/lang/String;
    .local v9, taskid:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 831
    .end local v9           #taskid:Ljava/lang/String;
    .restart local v8       #taskid:Ljava/lang/String;
    :cond_1
    const-string v10, "https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl"

    .line 833
    .local v10, url:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v3, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "method"

    const-string v13, "add_task"

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    iget v11, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v12, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v12}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v12

    if-ne v11, v12, :cond_3

    .line 836
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "app_id"

    iget-object v13, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAppId:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    :goto_1
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "source_url"

    move-object/from16 v0, p2

    invoke-direct {v11, v12, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "save_path"

    invoke-direct {v11, v12, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    const-string v11, "baiduPCS"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Source URL: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Remotedir: path: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 843
    const-string v13, ", token: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 842
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v5, 0x0

    .line 847
    .local v5, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {v10, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->buildURL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    .line 848
    const-string v11, "baiduPCS"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "url is "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 850
    .local v4, request:Lorg/apache/http/client/methods/HttpPost;
    iget v11, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v12, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v12}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v12

    if-ne v11, v12, :cond_2

    .line 851
    const-string v11, "Cookie"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "BDUSS="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_2
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 854
    .local v1, client:Lorg/apache/http/client/HttpClient;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getHttpContextWithCookie()Lorg/apache/http/protocol/HttpContext;

    move-result-object v11

    invoke-interface {v1, v4, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 855
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 856
    .local v7, status:I
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v6

    .line 857
    .local v6, responseString:Ljava/lang/String;
    const-string v11, "baiduPCS"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "offline complete, status: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", response: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 858
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 857
    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/16 v11, 0xc8

    if-ne v7, v11, :cond_4

    .line 860
    const/4 v11, 0x0

    move-object/from16 v0, p3

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 861
    move-object/from16 v0, p3

    invoke-direct {p0, v6, v0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseTaskidFromJSON(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Ljava/lang/String;

    move-result-object v8

    .line 862
    const-string v11, "baiduPCS"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "offline task id: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #responseString:Ljava/lang/String;
    .end local v7           #status:I
    :goto_2
    move-object v9, v8

    .line 876
    .end local v8           #taskid:Ljava/lang/String;
    .restart local v9       #taskid:Ljava/lang/String;
    goto/16 :goto_0

    .line 838
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #taskid:Ljava/lang/String;
    .restart local v8       #taskid:Ljava/lang/String;
    :cond_3
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "access_token"

    iget-object v13, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 864
    .restart local v1       #client:Lorg/apache/http/client/HttpClient;
    .restart local v4       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #responseString:Ljava/lang/String;
    .restart local v7       #status:I
    :cond_4
    :try_start_1
    invoke-direct {p0, v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseResultByResponse(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p3

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_1
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 866
    .end local v1           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v6           #responseString:Ljava/lang/String;
    .end local v7           #status:I
    :catch_0
    move-exception v2

    .line 867
    .local v2, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    invoke-virtual {v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;->printStackTrace()V

    .line 868
    const/16 v11, 0xd1

    move-object/from16 v0, p3

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 869
    .end local v2           #e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    :catch_1
    move-exception v2

    .line 870
    .local v2, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 871
    const/16 v11, 0xd1

    move-object/from16 v0, p3

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 872
    .end local v2           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v2

    .line 873
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 874
    const/4 v11, -0x3

    move-object/from16 v0, p3

    iput v11, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2
.end method

.method protected parseOfflineInfoFromJSON(Lorg/json/JSONObject;)Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
    .locals 4
    .parameter "jo"

    .prologue
    .line 1036
    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;

    invoke-direct {v1}, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;-><init>()V

    .line 1038
    .local v1, ret:Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
    if-eqz p1, :cond_7

    .line 1041
    :try_start_0
    const-string v2, "task_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1042
    const-string v2, "task_id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->taskid:Ljava/lang/String;

    .line 1044
    :cond_0
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1046
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1045
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->result:I

    .line 1048
    :cond_1
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1049
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->status:I

    .line 1051
    :cond_2
    const-string v2, "create_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1052
    const-string v2, "create_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->ctime:J

    .line 1054
    :cond_3
    const-string v2, "start_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1055
    const-string v2, "start_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->stime:J

    .line 1057
    :cond_4
    const-string v2, "finish_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1058
    const-string v2, "finish_time"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->ftime:J

    .line 1060
    :cond_5
    const-string v2, "file_size"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1061
    const-string v2, "file_size"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->filesize:J

    .line 1063
    :cond_6
    const-string v2, "finished_size"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1064
    const-string v2, "finished_size"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;->finishsize:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :cond_7
    :goto_0
    return-object v1

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startAuth(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/plugins/AuthListener;)V
    .locals 0
    .parameter "context"
    .parameter "appKey"
    .parameter "listener"

    .prologue
    .line 89
    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/io/InputStream;JLcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 13
    .parameter "remotePath"
    .parameter "is"
    .parameter "size"
    .parameter "listener"
    .parameter "code"

    .prologue
    .line 689
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    if-eqz p2, :cond_0

    const-wide/16 v10, 0x0

    cmp-long v10, p3, v10

    if-eqz v10, :cond_0

    if-nez p5, :cond_1

    .line 690
    :cond_0
    const/4 v10, -0x1

    move-object/from16 v0, p6

    iput v10, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 691
    const/4 v10, 0x0

    .line 736
    :goto_0
    return-object v10

    .line 694
    :cond_1
    const-string v9, "https://pcs.baidu.com/rest/2.0/pcs/file"

    .line 696
    .local v9, url:Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v6, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "method"

    const-string v12, "upload"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    iget v10, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v11, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v11}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v11

    if-ne v10, v11, :cond_3

    .line 699
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "app_id"

    iget-object v12, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAppId:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    :goto_1
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "path"

    invoke-direct {v10, v11, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :try_start_0
    invoke-static {v9, v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->buildURL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 708
    new-instance v7, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 709
    .local v7, request:Lorg/apache/http/client/methods/HttpPut;
    iget v10, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    sget-object v11, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual {v11}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 710
    const-string v10, "Cookie"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "BDUSS="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    :cond_2
    new-instance v5, Lorg/apache/http/entity/InputStreamEntity;

    move-wide/from16 v0, p3

    invoke-direct {v5, p2, v0, v1}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 714
    .local v5, isEntity:Lorg/apache/http/entity/InputStreamEntity;
    const-string v10, "application/octet-stream"

    invoke-virtual {v5, v10}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 715
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 717
    move-object v4, v5

    .line 720
    .local v4, entity:Lorg/apache/http/HttpEntity;
    invoke-virtual {v7, v4}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 721
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 724
    .local v2, client:Lorg/apache/http/client/HttpClient;
    invoke-direct {p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getHttpContextWithCookie()Lorg/apache/http/protocol/HttpContext;

    move-result-object v10

    invoke-interface {v2, v7, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 725
    .local v8, response:Lorg/apache/http/HttpResponse;
    const/4 v10, 0x0

    move-object/from16 v0, p6

    iput v10, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I
    :try_end_0
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 736
    .end local v2           #client:Lorg/apache/http/client/HttpClient;
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #isEntity:Lorg/apache/http/entity/InputStreamEntity;
    .end local v7           #request:Lorg/apache/http/client/methods/HttpPut;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :goto_2
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 701
    :cond_3
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "access_token"

    iget-object v12, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 726
    :catch_0
    move-exception v3

    .line 727
    .local v3, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    invoke-virtual {v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;->printStackTrace()V

    .line 728
    const/16 v10, 0xd1

    move-object/from16 v0, p6

    iput v10, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 729
    .end local v3           #e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    :catch_1
    move-exception v3

    .line 730
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 731
    const/16 v10, 0xd1

    move-object/from16 v0, p6

    iput v10, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2

    .line 732
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v3

    .line 733
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 734
    const/4 v10, -0x3

    move-object/from16 v0, p6

    iput v10, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto :goto_2
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 20
    .parameter "remotePath"
    .parameter "localPath"
    .parameter "listener"
    .parameter "code"

    .prologue
    .line 741
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    .line 742
    :cond_0
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p4

    iput v0, v1, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 743
    const/4 v8, 0x0

    .line 820
    :cond_1
    :goto_0
    return-object v8

    .line 752
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getQuota(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/model/QuotaInfo;

    .line 753
    move-object/from16 v0, p4

    iget v0, v0, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 754
    const/4 v8, 0x0

    goto :goto_0

    .line 757
    :cond_3
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_4

    .line 759
    const-string v16, "baiduPCS"

    const-string v17, "File not exist!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/16 v16, -0x6

    move/from16 v0, v16

    move-object/from16 v1, p4

    iput v0, v1, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 761
    const/4 v8, 0x0

    goto :goto_0

    .line 764
    :cond_4
    const-string v15, "https://pcs.baidu.com/rest/2.0/pcs/file"

    .line 766
    .local v15, url:Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 767
    .local v10, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/apache/http/NameValuePair;>;"
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "method"

    const-string v18, "upload"

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAuthType:I

    move/from16 v16, v0

    sget-object v17, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->COOKIE:Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;->getValue()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 769
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "app_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mAppId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    :goto_1
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "path"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    const-string v16, "baiduPCS"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Local file: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", size: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", Remotedir: null, path: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 778
    const-string v18, ", token: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 777
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v8, 0x0

    .line 781
    .local v8, entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    const/4 v12, 0x0

    .line 783
    .local v12, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {v15, v10}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;->buildURL(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 784
    const-string v16, "baiduPCS"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "url is "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v11, v15}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 786
    .local v11, request:Lorg/apache/http/client/methods/HttpPost;
    const-string v16, "Cookie"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "BDUSS="

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    new-instance v7, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, v16

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;J)V

    .line 789
    .local v7, entity:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;
    new-instance v4, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v4, v9}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 790
    .local v4, bin:Lorg/apache/http/entity/mime/content/FileBody;
    const-string v16, "uploadedfile"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v4}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 791
    invoke-virtual {v11, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v5

    .line 798
    .local v5, client:Lorg/apache/http/client/HttpClient;
    invoke-direct/range {p0 .. p0}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->getHttpContextWithCookie()Lorg/apache/http/protocol/HttpContext;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v11, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 799
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 800
    .local v14, status:I
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    .line 801
    .local v13, responseString:Ljava/lang/String;
    const-string v16, "baiduPCS"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "Upload complete, status: "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", response: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 802
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 801
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/16 v16, 0xc8

    move/from16 v0, v16

    if-ne v14, v0, :cond_1

    .line 804
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p4

    iput v0, v1, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    .line 805
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->parseEntryFromJSON(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    :try_end_0
    .catch Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    goto/16 :goto_0

    .line 771
    .end local v4           #bin:Lorg/apache/http/entity/mime/content/FileBody;
    .end local v5           #client:Lorg/apache/http/client/HttpClient;
    .end local v7           #entity:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;
    .end local v8           #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .end local v11           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v12           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #responseString:Ljava/lang/String;
    .end local v14           #status:I
    :cond_5
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "access_token"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;->mToken:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 809
    .restart local v8       #entry:Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .restart local v12       #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v6

    .line 810
    .local v6, e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    invoke-virtual {v6}, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;->printStackTrace()V

    .line 811
    const/16 v16, 0xd1

    move/from16 v0, v16

    move-object/from16 v1, p4

    iput v0, v1, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_0

    .line 812
    .end local v6           #e:Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$BadRequestException;
    :catch_1
    move-exception v6

    .line 813
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 814
    const/16 v16, 0xd1

    move/from16 v0, v16

    move-object/from16 v1, p4

    iput v0, v1, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_0

    .line 815
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v6

    .line 816
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 817
    const/16 v16, -0x3

    move/from16 v0, v16

    move-object/from16 v1, p4

    iput v0, v1, Lcom/baidu/yi/sdk/cloudstorage/model/ErrorCodeWrapper;->errorCode:I

    goto/16 :goto_0
.end method
