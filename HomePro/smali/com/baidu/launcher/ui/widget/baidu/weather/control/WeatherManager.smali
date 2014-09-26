.class public Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;
.super Ljava/lang/Object;
.source "WeatherManager.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$1;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;,
        Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherManager"

.field private static sInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;


# instance fields
.field private mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

.field private mContext:Landroid/content/Context;

.field private mForecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

.field private mForecastPM:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

.field private mLBSManager:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->sInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mLBSManager:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;

    .line 62
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    .line 63
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecastPM:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    .line 64
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    const-string v1, ""

    const-string v2, "auto_location"

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    .line 65
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    invoke-direct {v0, p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mLBSManager:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;-><init>(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager$LBSListener;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mLBSManager:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecastPM:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->convertPMLocationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertPMLocationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "locationCode"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getPMLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;->isContainInPMLocation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->toParentLocationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->sInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    if-nez v0, :cond_1

    .line 75
    const-class v1, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->sInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->sInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    .line 79
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_1
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->sInstance:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "update_current_end"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v2, "update_city_end"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    const-string v2, "update_pm_end"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    const-string v2, "location_changed_message"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->readLocationCode()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, restoreCode:Ljava/lang/String;
    const-string v2, "WeatherManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":init,restoreCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v2, "auto_location"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->isAutoLocate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->fromContentValues(Landroid/content/ContentValues;)V

    .line 132
    :goto_0
    const-string v2, "WeatherManager"

    const-string v3, "init"

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    const-string v3, "auto_location"

    iput-object v3, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    .line 130
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->setAutoLocate(Z)V

    goto :goto_0
.end method

.method private requestUpdateLocation(Z)V
    .locals 1
    .parameter "active"

    .prologue
    .line 357
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mLBSManager:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;

    if-eqz v0, :cond_0

    .line 358
    if-eqz p1, :cond_1

    .line 359
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mLBSManager:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->startListenLocation()V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mLBSManager:Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/lbs/LBSManager;->stopListenLocation()V

    goto :goto_0
.end method

.method private requestUpdatePM25ByCode(Ljava/lang/String;)V
    .locals 4
    .parameter "locationcode"

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->convertPMLocationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, queryCode:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 200
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.baidu.home2"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v3, "update_pm"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "locationCode"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v3, "cityCode"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 208
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private requestUpdateWeatherByCode(Ljava/lang/String;)V
    .locals 4
    .parameter "locationcode"

    .prologue
    .line 180
    if-eqz p1, :cond_0

    .line 181
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.home2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v2, "update_city"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "locationCode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v2, "forceUpdate"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    const-string v2, "cityCode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 188
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 190
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private requestUpdateWeatherByLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    const-wide/16 v4, 0x0

    .line 160
    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    .line 164
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.home2"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v2, "update_current"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "longitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 169
    const-string v2, "latitude"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 170
    const-string v2, "currentCity"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 171
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 92
    const-string v0, "WeatherManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener:size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->init()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1
    return-void
.end method

.method public getCity()Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    return-object v0
.end method

.method public getForecast()Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    return-object v0
.end method

.method public hasPMInfo(Ljava/lang/String;)Z
    .locals 4
    .parameter "locationCode"

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, res:Z
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getPMLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;->isContainInPMLocation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 276
    :goto_0
    const-string v1, "WeatherManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasPMInfo,locationCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return v0

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getPMLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->toParentLocationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMLocationDao;->isContainInPMLocation(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isAutoLocate()Z
    .locals 5

    .prologue
    .line 309
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 310
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "AutoLocate"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 312
    .local v0, autoLocate:Z
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeatherManager:isAutoLocate ? autoLocate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return v0
.end method

.method public onAutoLocationFail()V
    .locals 4

    .prologue
    .line 375
    const-string v2, "###"

    const-string v3, "WeatherManager:onAutoLocationFail!"

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateLocation(Z)V

    .line 378
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;

    .line 380
    .local v1, listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    invoke-interface {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;->onAutoLocationFail()V

    goto :goto_0

    .line 383
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .parameter "location"

    .prologue
    .line 367
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mLocation:Landroid/location/Location;

    .line 368
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateLocation(Z)V

    .line 369
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherManager:onLocationChanged:location,lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeatherByLocation(Landroid/location/Location;)V

    .line 371
    return-void
.end method

.method public readLocationCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 326
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 328
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "LocationCodeString"

    const-string v3, "auto_location"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, code:Ljava/lang/String;
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeatherManager:readLocationCode code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-object v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mReceiver:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$UpdateResultReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    const-string v1, "WeatherManager"

    const-string v2, "release"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WeatherManager"

    const-string v2, "error happens when release:"

    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 103
    const-string v0, "WeatherManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeListener:size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->release()V

    .line 111
    :cond_1
    return-void
.end method

.method public requestSetLocation()V
    .locals 3

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public requestSetLocation(Ljava/lang/String;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    const-string v1, "city"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method public requestUpdatePM25ByCode()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdatePM25ByCode(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public requestUpdateWeather()V
    .locals 3

    .prologue
    .line 147
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherManager:requestUpdateWeather:mCity.mLocationCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    const-string v1, "auto_location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->isAutoLocate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateLocation(Z)V

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateLocation(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeatherByCode()V

    goto :goto_0
.end method

.method public requestUpdateWeatherByCode()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    iget-object v0, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeatherByCode(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public resetPreference()V
    .locals 2

    .prologue
    .line 350
    const-string v0, "auto_location"

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->writeLocationCode(Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->setAutoLocate(Z)V

    .line 353
    const-string v0, "###"

    const-string v1, "WeatherManager:resetPreference"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public restoreLastWeather()Z
    .locals 11

    .prologue
    .line 211
    const/4 v6, 0x0

    .line 212
    .local v6, res:Z
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->readLocationCode()Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, savedCode:Ljava/lang/String;
    const-string v8, "###"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WeatherManager:restoreLastWeather =====>>,res="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v8, "auto_location"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, cityValues:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 218
    .local v1, forecaseValues:Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 220
    .local v4, pmValues:Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    invoke-virtual {v8, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->fromContentValues(Landroid/content/ContentValues;)V

    .line 225
    :cond_0
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IForecastDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_1

    .line 227
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    invoke-virtual {v8, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->fromContentValues(Landroid/content/ContentValues;)V

    .line 230
    :cond_1
    invoke-virtual {p0, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->hasPMInfo(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 231
    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->convertPMLocationCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, queryCode:Ljava/lang/String;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getForecastPMDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;

    move-result-object v8

    invoke-interface {v8, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/IPMDao;->getByLocationCode(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 234
    if-eqz v4, :cond_2

    .line 235
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecastPM:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    invoke-virtual {v8, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->fromContentValues(Landroid/content/ContentValues;)V

    .line 239
    .end local v5           #queryCode:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 240
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_3

    .line 241
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;

    .line 242
    .local v3, listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    invoke-interface {v3, v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;->onWeatherRestored(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;)V

    goto :goto_0

    .line 246
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    :cond_3
    const/4 v6, 0x1

    .line 249
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 250
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_5

    .line 251
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;

    .line 252
    .restart local v3       #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    iget-object v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    iget-object v9, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mForecastPM:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    invoke-interface {v3, v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;->onPMDataChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;)V

    goto :goto_1

    .line 257
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
    :cond_5
    const-string v8, "###"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WeatherManager:restoreLastWeather,savedCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    iget-object v10, v10, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .end local v0           #cityValues:Landroid/content/ContentValues;
    .end local v1           #forecaseValues:Landroid/content/ContentValues;
    .end local v4           #pmValues:Landroid/content/ContentValues;
    :goto_2
    const-string v8, "###"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WeatherManager:restoreLastWeather <<=====,res="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return v6

    .line 259
    :cond_6
    const/4 v6, 0x0

    .line 260
    const-string v8, "###"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WeatherManager:restoreLastWeather,savedCode=auto_location,"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setAutoLocate(Z)V
    .locals 5
    .parameter "autoLocate"

    .prologue
    .line 317
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 319
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AutoLocate"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 321
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeatherManager:setAutoLocate autoLocate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public writeLocationCode(Ljava/lang/String;)V
    .locals 5
    .parameter "code"

    .prologue
    .line 334
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 337
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 338
    .local v0, mEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LocationCodeString"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 339
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 340
    const-string v2, "###"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeatherManager:writeLocationCode code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .end local v0           #mEditor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
