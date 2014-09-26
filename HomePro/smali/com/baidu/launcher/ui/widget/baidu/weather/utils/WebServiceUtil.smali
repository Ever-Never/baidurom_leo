.class public Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;
.super Ljava/lang/Object;
.source "WebServiceUtil.java"


# static fields
.field private static API_KEY:Ljava/lang/String; = null

.field private static final CACHE_DIR:Ljava/lang/String; = "/data/data/com.baidu.launcher/caches/"

.field private static final CACHE_FILE:Ljava/lang/String; = "/data/data/com.baidu.launcher/caches/dump."

.field private static final CACHE_POSTFIX:Ljava/lang/String; = ".xml"

.field private static final DEBUG:Z = false

.field private static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final PLACE_API:Ljava/lang/String; = null

.field private static final WEBSERVICE_CACHE_CNT:J = 0xaL

.field private static final WEBSERVICE_TIMEOUT:J = 0x4e20L

.field private static logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    .line 50
    const-string v0, "DC56ee77f5a895c0a5080fbee5f52826"

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->API_KEY:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.map.baidu.com/location/ip?ak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->PLACE_API:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static amendBaseUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .parameter "baseUrl"
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

    .prologue
    .line 153
    .local p1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    if-nez p1, :cond_0

    .line 162
    .end local p0
    :goto_0
    return-object p0

    .line 156
    .restart local p0
    :cond_0
    move-object v0, p0

    .line 157
    .local v0, amendBaseUrl:Ljava/lang/String;
    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    :cond_1
    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, parameters:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p0, v0

    .line 162
    goto :goto_0
.end method

.method private static buildDumpFileName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 186
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 187
    .local v0, date:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy.MM.dd.HH.mm.ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, timeFormat:Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/com.baidu.launcher/caches/dump."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, dumpFileName:Ljava/lang/String;
    return-object v1
.end method

.method private static initHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 3

    .prologue
    const/16 v2, 0x4e20

    .line 171
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 172
    .local v1, httpParameters:Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 174
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 176
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 177
    .local v0, httpClient:Lorg/apache/http/client/HttpClient;
    return-object v0
.end method

.method private static query(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "baseUrl"
    .parameter
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v5, 0x0

    .line 67
    .local v5, result:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->initHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 68
    .local v2, httpClient:Lorg/apache/http/client/HttpClient;
    invoke-static {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->amendBaseUrl(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, amendBaseUrl:Ljava/lang/String;
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request url :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->i(Ljava/lang/String;)V

    .line 70
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 71
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const-string v7, "User-Agent"

    invoke-virtual {v3, v7, p2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 74
    .local v4, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 75
    .local v6, statusLine:Lorg/apache/http/StatusLine;
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Request returned status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 76
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 82
    .end local v4           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v6           #statusLine:Lorg/apache/http/StatusLine;
    :goto_0
    return-object v5

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, ex:Ljava/lang/Exception;
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Problem calling queryApi, Reason : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->w(Ljava/lang/String;)V

    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static queryForecast(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    .locals 4
    .parameter "context"
    .parameter "baseUrl"
    .parameter
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;"
        }
    .end annotation

    .prologue
    .line 120
    .local p2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p1, p2, p3}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->query(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, text:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->parse(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    move-result-object v0

    .line 122
    .local v0, forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    if-nez v0, :cond_0

    .line 123
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    const-string v3, "Failed to get valid forecast info!"

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 134
    :cond_0
    return-object v0
.end method

.method public static queryForecastPM(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    .locals 2
    .parameter "context"
    .parameter "baseUrl"
    .parameter
    .parameter "userAgent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;"
        }
    .end annotation

    .prologue
    .line 139
    .local p2, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-static {p1, p2, p3}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->query(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->parse(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    move-result-object v0

    .line 142
    .local v0, forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    return-object v0
.end method

.method public static queryLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 86
    sget-object v10, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->PLACE_API:Ljava/lang/String;

    const-string v11, ""

    invoke-static {v10, v9, v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->query(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, ret:Ljava/lang/String;
    const-string v10, "###"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ret="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-nez v6, :cond_0

    move-object v5, v9

    .line 104
    :goto_0
    return-object v5

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, curObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, jsonObject:Lorg/json/JSONObject;
    const-string v10, "content"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 95
    .local v2, jsonContent:Lorg/json/JSONObject;
    const-string v10, "point"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 96
    .local v4, jsonPoint:Lorg/json/JSONObject;
    const-string v10, "x"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, x:Ljava/lang/String;
    const-string v10, "y"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, y:Ljava/lang/String;
    new-instance v5, Landroid/location/Location;

    const-string v10, ""

    invoke-direct {v5, v10}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 99
    .local v5, loc:Landroid/location/Location;
    invoke-static {v7}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Landroid/location/Location;->setLatitude(D)V

    .line 100
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Landroid/location/Location;->setLongitude(D)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    .end local v2           #jsonContent:Lorg/json/JSONObject;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #jsonPoint:Lorg/json/JSONObject;
    .end local v5           #loc:Landroid/location/Location;
    .end local v7           #x:Ljava/lang/String;
    .end local v8           #y:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v5, v9

    .line 104
    goto :goto_0
.end method

.method private static removeExpiredCache()V
    .locals 11

    .prologue
    .line 239
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/data/com.baidu.launcher/caches/"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, cacheFileArray:[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 242
    .local v3, cacheFiles:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil$1;

    invoke-direct {v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil$1;-><init>()V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    const/4 v6, 0x0

    .line 250
    .local v6, index:I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 251
    .local v1, cacheFile:Ljava/lang/String;
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "seek cache file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 252
    add-int/lit8 v6, v6, 0x1

    int-to-long v7, v6

    const-wide/16 v9, 0xa

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 253
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/data/com.baidu.launcher/caches/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v4, fileDelete:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 255
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Successfully remove expired cache file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_1
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed remove expired cache file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v1           #cacheFile:Ljava/lang/String;
    .end local v4           #fileDelete:Ljava/io/File;
    :cond_2
    return-void
.end method

.method private static saveCacheFile(Ljava/lang/String;)Z
    .locals 10
    .parameter "text"

    .prologue
    .line 201
    const/4 v6, 0x0

    .line 202
    .local v6, status:Z
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->buildDumpFileName()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, cacheFileName:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 205
    const/4 v7, 0x0

    .line 232
    :goto_0
    return v7

    .line 206
    :cond_0
    const/4 v4, 0x0

    .line 208
    .local v4, outputStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/data/com.baidu.launcher/caches/"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 212
    :cond_1
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .local v5, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v7, "UTF-8"

    invoke-virtual {p0, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 214
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 215
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Successfully save forecast cache file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 216
    const/4 v6, 0x1

    .line 223
    if-eqz v5, :cond_4

    .line 225
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .end local v0           #cacheDir:Ljava/io/File;
    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    move v7, v6

    .line 232
    goto :goto_0

    .line 226
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v0       #cacheDir:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 227
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 228
    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 217
    .end local v0           #cacheDir:Ljava/io/File;
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 218
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const/4 v6, 0x0

    .line 219
    :try_start_3
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed save forecast cache file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    if-eqz v4, :cond_2

    .line 225
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 226
    :catch_2
    move-exception v3

    .line 227
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 223
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v4, :cond_3

    .line 225
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 228
    :cond_3
    :goto_4
    throw v7

    .line 226
    :catch_3
    move-exception v3

    .line 227
    .restart local v3       #ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 223
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v0       #cacheDir:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 217
    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4           #outputStream:Ljava/io/FileOutputStream;
    .restart local v5       #outputStream:Ljava/io/FileOutputStream;
    :cond_4
    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
