.class public Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;
.super Ljava/lang/Object;
.source "ForecastServiceImpl.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/service/IForecastService;


# static fields
.field private static final KEY_FORECAST_SERVER:Ljava/lang/String; = "baidu.server.weather"

.field private static final PARAM_CITY_CODE:Ljava/lang/String; = "cityCode"

.field private static final PARAM_LATITUDE:Ljava/lang/String; = "lat"

.field private static final PARAM_LONGITUDE:Ljava/lang/String; = "lng"

.field private static final PARAM_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_BD:Ljava/lang/String; = "bd_"

.field private static final PREFIX_MO:Ljava/lang/String; = "_mo_"

.field private static logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    .line 162
    return-void
.end method

.method private buildLocationCodeParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "locationCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v1, cityCodeNameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cityCode"

    invoke-direct {v0, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v0, cityCodeNameValuePair:Lorg/apache/http/NameValuePair;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    return-object v1
.end method

.method private buildLongitudeLatitudeParameters(DD)Ljava/util/List;
    .locals 5
    .parameter "longitude"
    .parameter "latitude"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v1, locationNameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "lng"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v2, longitudeNameValuePair:Lorg/apache/http/NameValuePair;
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "lat"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v0, latitudeNameValuePair:Lorg/apache/http/NameValuePair;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    return-object v1
.end method

.method private buildUserAgent()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 114
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 115
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 117
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    :goto_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    const v4, 0x7f0c01b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    const-string v4, "Couldn\'t find package information in PackageManager"

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBaseUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 102
    const-string v2, "baidu.server.weather"

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    const v4, 0x7f0c01b0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, serverAddress:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    const v3, 0x7f0c01ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, baseUrl:Ljava/lang/String;
    return-object v0
.end method

.method private getForecastByParameters(Ljava/util/List;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, baseUrl:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, userAgent:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    invoke-static {v2, v0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->queryForecast(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    move-result-object v2

    .line 82
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getForecastPMByParameters(Ljava/util/List;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->getPMBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, baseUrl:Ljava/lang/String;
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->buildUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, userAgent:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    invoke-static {v2, v0, p1, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WebServiceUtil;->queryForecastPM(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    move-result-object v2

    .line 91
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getPMBaseUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    const-string v2, "baidu.server.weather"

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    const v4, 0x7f0c01b0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, serverAddress:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->context:Landroid/content/Context;

    const v3, 0x7f0c01af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, baseUrl:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public getByLocationCode(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    .locals 2
    .parameter "locationCode"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->buildLocationCodeParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, cityCodeParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->getForecastByParameters(Ljava/util/List;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    move-result-object v1

    return-object v1
.end method

.method public getByLongitudeAndLatitude(DD)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    .locals 2
    .parameter "longitude"
    .parameter "latitude"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->buildLongitudeLatitudeParameters(DD)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, locationParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->getForecastByParameters(Ljava/util/List;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    move-result-object v1

    return-object v1
.end method

.method public getPMbyLocationCode(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    .locals 2
    .parameter "locationCode"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->buildLocationCodeParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, cityCodeParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/service/impl/ForecastServiceImpl;->getForecastPMByParameters(Ljava/util/List;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    move-result-object v1

    return-object v1
.end method
