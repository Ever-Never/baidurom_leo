.class public Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
.super Ljava/lang/Object;
.source "ForecastPM.java"


# static fields
.field private static final TAG_AQI:Ljava/lang/String; = "aqi"

.field private static final TAG_CO:Ljava/lang/String; = "co"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_LOCATION_CODE:Ljava/lang/String; = "cityCode"

.field private static final TAG_NO2:Ljava/lang/String; = "no2"

.field private static final TAG_O3:Ljava/lang/String; = "o3"

.field private static final TAG_PM10:Ljava/lang/String; = "pm10"

.field private static final TAG_PM25:Ljava/lang/String; = "pm2_5"

.field private static final TAG_PUBLISH_TIME:Ljava/lang/String; = "time_point"

.field private static final TAG_QUALITY:Ljava/lang/String; = "quality"

.field private static final TAG_SO2:Ljava/lang/String; = "so2"

.field private static final TAG_STATUS:Ljava/lang/String; = "status"

.field private static logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;


# instance fields
.field public aqi:I

.field public co:D

.field public errorNo:I

.field public locationCode:Ljava/lang/String;

.field public no2:D

.field public o3:D

.field public pm10:I

.field public pm2_5:I

.field public publishTime:J

.field public quality:Ljava/lang/String;

.field public so2:D

.field public validStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000

    const/high16 v3, -0x8000

    const-wide/16 v1, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->errorNo:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->locationCode:Ljava/lang/String;

    .line 38
    iput-wide v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->validStart:J

    .line 39
    iput-wide v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->publishTime:J

    .line 40
    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    .line 41
    iput-wide v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->co:D

    .line 42
    iput-wide v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->no2:D

    .line 43
    iput-wide v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->so2:D

    .line 44
    iput-wide v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->o3:D

    .line 45
    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->pm2_5:I

    .line 46
    iput v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->pm10:I

    .line 47
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->quality:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    .locals 10
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 84
    if-nez p0, :cond_0

    move-object v2, v6

    .line 118
    :goto_0
    return-object v2

    .line 87
    :cond_0
    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "text :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    const/4 v5, -0x1

    .line 91
    .local v5, status:I
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, jsonObject:Lorg/json/JSONObject;
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;

    invoke-direct {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v1           #forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    .local v2, forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    :try_start_1
    const-string v7, "status"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 94
    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 96
    .local v3, jsonData:Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->validStart:J

    .line 98
    const-string v7, "aqi"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    .line 99
    const-string v7, "co"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->co:D

    .line 100
    const-string v7, "no2"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->no2:D

    .line 101
    const-string v7, "o3"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->o3:D

    .line 102
    const-string v7, "pm10"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->pm10:I

    .line 103
    const-string v7, "pm2_5"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->pm2_5:I

    .line 104
    const-string v7, "quality"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->quality:Ljava/lang/String;

    .line 105
    const-string v7, "so2"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->so2:D

    .line 106
    const-string v7, "cityCode"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->locationCode:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    if-eqz v5, :cond_1

    .line 114
    const/16 v6, 0x458

    iput v6, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->errorNo:I

    goto/16 :goto_0

    .line 108
    .end local v2           #forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    .end local v3           #jsonData:Lorg/json/JSONObject;
    .end local v4           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Lorg/json/JSONException;
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v6

    .line 110
    goto/16 :goto_0

    .line 116
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    .restart local v2       #forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    .restart local v3       #jsonData:Lorg/json/JSONObject;
    .restart local v4       #jsonObject:Lorg/json/JSONObject;
    :cond_1
    const/16 v6, 0x3e8

    iput v6, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->errorNo:I

    goto/16 :goto_0

    .line 108
    .end local v3           #jsonData:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    .restart local v1       #forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
    goto :goto_1
.end method


# virtual methods
.method public fromContentValues(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 54
    const-string v0, "locationCode"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->locationCode:Ljava/lang/String;

    .line 55
    const-string v0, "validStart"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->validStart:J

    .line 56
    const-string v0, "aqi"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    .line 57
    const-string v0, "pm2_5"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->pm2_5:I

    .line 58
    const-string v0, "pm10"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->pm10:I

    .line 59
    const-string v0, "so2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->so2:D

    .line 60
    const-string v0, "no2"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->no2:D

    .line 61
    const-string v0, "o3"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->o3:D

    .line 62
    const-string v0, "co"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->co:D

    .line 63
    const-string v0, "quality"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->quality:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "locationCode"

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->locationCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "validStart"

    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->validStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v1, "aqi"

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v1, "pm2_5"

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->pm2_5:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v1, "pm10"

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->pm10:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v1, "so2"

    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->so2:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 75
    const-string v1, "no2"

    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->no2:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 76
    const-string v1, "o3"

    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->o3:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 77
    const-string v1, "co"

    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->co:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 78
    const-string v1, "quality"

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->quality:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-object v0
.end method
