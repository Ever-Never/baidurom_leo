.class public Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
.super Ljava/lang/Object;
.source "Forecast.java"


# static fields
.field private static final TAG_CONDITIONS:Ljava/lang/String; = "weather"

.field private static final TAG_DATA:Ljava/lang/String; = "data"

.field private static final TAG_DATE:Ljava/lang/String; = "date"

.field private static final TAG_DATE_STR:Ljava/lang/String; = "time"

.field private static final TAG_DAY_ICON:Ljava/lang/String; = "day"

.field private static final TAG_ERROR:Ljava/lang/String; = "err"

.field private static final TAG_ITEM:Ljava/lang/String; = "items"

.field private static final TAG_LOCATION_CODE:Ljava/lang/String; = "cityCode"

.field private static final TAG_LOCATION_NAME:Ljava/lang/String; = "city"

.field private static final TAG_NIGHT_ICON:Ljava/lang/String; = "night"

.field private static final TAG_NOWWEATHER:Ljava/lang/String; = "nowweather"

.field private static final TAG_PUBLISH_TIME:Ljava/lang/String; = "publishTime"

.field private static final TAG_STATUS:Ljava/lang/String; = "status"

.field private static final TAG_TEMP:Ljava/lang/String; = "temp"

.field private static final TAG_WIND:Ljava/lang/String; = "wind"

.field private static logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;


# instance fields
.field public errorNo:I

.field public forecastOneDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;",
            ">;"
        }
    .end annotation
.end field

.field public locationCode:Ljava/lang/String;

.field public locationName:Ljava/lang/String;

.field public publishTime:J

.field public tempCal:Ljava/lang/String;

.field public tempCur:Ljava/lang/String;

.field public validStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->errorNo:I

    .line 69
    iput-wide v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->validStart:J

    .line 70
    iput-wide v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->publishTime:J

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;

    .line 72
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    .line 73
    const-string v0, "N/A"

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCal:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationName:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-direct {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    const/4 v1, 0x1

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-direct {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    const/4 v1, 0x2

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-direct {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    const/4 v1, 0x3

    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-direct {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 85
    return-void
.end method

.method private static handleError(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, forecastOneDays:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-object p0

    .line 291
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 292
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 294
    .local v4, resultForecastOneDays:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;>;"
    const-wide/high16 v2, -0x8000

    .line 295
    .local v2, minDate:J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    .line 296
    .local v0, forecastOneDay:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;
    iget-wide v5, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    cmp-long v5, v5, v2

    if-lez v5, :cond_2

    .line 297
    iget-wide v2, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    goto :goto_1

    .line 301
    .end local v0           #forecastOneDay:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    .line 302
    .restart local v0       #forecastOneDay:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;
    iget-wide v5, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    cmp-long v5, v5, v2

    if-eqz v5, :cond_4

    .line 303
    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 307
    .end local v0           #forecastOneDay:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;
    :cond_5
    move-object p0, v4

    goto :goto_0
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    .locals 17
    .parameter "context"
    .parameter "text"

    .prologue
    .line 182
    if-nez p1, :cond_1

    .line 183
    const/4 v4, 0x0

    .line 272
    :cond_0
    :goto_0
    return-object v4

    .line 185
    :cond_1
    new-instance v5, Ljava/util/Vector;

    const/4 v14, 0x0

    invoke-direct {v5, v14}, Ljava/util/Vector;-><init>(I)V

    .line 186
    .local v5, forecastOneDays:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;>;"
    const/4 v14, 0x0

    new-instance v15, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-direct {v15}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;-><init>()V

    invoke-interface {v5, v14, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 187
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    invoke-direct {v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;-><init>()V

    .line 188
    .local v4, forecast:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
    const/4 v8, 0x0

    .line 189
    .local v8, jsonData:Lorg/json/JSONObject;
    const/4 v11, -0x1

    .line 190
    .local v11, status:I
    const/4 v2, 0x0

    .line 192
    .local v2, curObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v9, jsonObject:Lorg/json/JSONObject;
    const-string v14, "status"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 194
    const-string v14, "data"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 195
    if-nez v8, :cond_2

    .line 196
    const/4 v4, 0x0

    goto :goto_0

    .line 198
    :cond_2
    const-string v14, "city"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationName:Ljava/lang/String;

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->validStart:J

    .line 200
    const-string v14, "publishTime"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->parseTime(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    iput-wide v14, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->publishTime:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :try_start_1
    const-string v14, "cityCode"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    :goto_1
    :try_start_2
    const-string v14, "nowweather"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 219
    const-string v14, "temp"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    :goto_2
    if-nez v8, :cond_3

    .line 226
    const/4 v4, 0x0

    goto :goto_0

    .line 201
    .end local v9           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 202
    .local v3, e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 203
    const/4 v4, 0x0

    goto :goto_0

    .line 208
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v9       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    .line 209
    .restart local v3       #e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 210
    const/4 v14, 0x0

    iput-object v14, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;

    goto :goto_1

    .line 220
    .end local v3           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v3

    .line 221
    .restart local v3       #e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 222
    const/4 v2, 0x0

    goto :goto_2

    .line 227
    .end local v3           #e:Lorg/json/JSONException;
    :cond_3
    :try_start_3
    const-string v14, "items"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 229
    .local v7, jsonArray:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v6, v14, :cond_8

    .line 230
    if-eqz v6, :cond_4

    .line 231
    new-instance v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-direct {v14}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;-><init>()V

    invoke-interface {v5, v6, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 232
    :cond_4
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 233
    .local v10, jsonObject2:Lorg/json/JSONObject;
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v15, "date"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->parseDate(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    iput-wide v15, v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    .line 234
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v15, "time"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->dateStr:Ljava/lang/String;

    .line 235
    const-string v14, "temp"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 237
    .local v12, temp:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->parseTemperature(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v13

    .line 238
    .local v13, temperatures:[I
    if-nez v6, :cond_7

    const/4 v14, 0x0

    aget v14, v13, v14

    const/high16 v15, -0x8000

    if-eq v14, v15, :cond_5

    const/4 v14, 0x1

    aget v14, v13, v14

    const/high16 v15, -0x8000

    if-ne v14, v15, :cond_7

    .line 239
    :cond_5
    if-eqz v12, :cond_6

    .line 240
    iput-object v12, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCal:Ljava/lang/String;

    .line 247
    :cond_6
    :goto_4
    const-string v14, "weather"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, condition:Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v14, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setConditions(Ljava/lang/String;)V

    .line 249
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    move-object/from16 v0, p0

    invoke-static {v1, v14, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->setIcon(Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;Landroid/content/Context;)V

    .line 250
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v15, "wind"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setWind(Ljava/lang/String;)V

    .line 229
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 242
    .end local v1           #condition:Ljava/lang/String;
    :cond_7
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const/4 v15, 0x1

    aget v15, v13, v15

    invoke-virtual {v14, v15}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setTempHigh(I)V

    .line 243
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const/4 v15, 0x0

    aget v15, v13, v15

    invoke-virtual {v14, v15}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setTempLow(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 257
    .end local v6           #i:I
    .end local v7           #jsonArray:Lorg/json/JSONArray;
    .end local v10           #jsonObject2:Lorg/json/JSONObject;
    .end local v12           #temp:Ljava/lang/String;
    .end local v13           #temperatures:[I
    :catch_3
    move-exception v3

    .line 258
    .restart local v3       #e:Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 259
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 253
    .end local v3           #e:Lorg/json/JSONException;
    .restart local v6       #i:I
    .restart local v7       #jsonArray:Lorg/json/JSONArray;
    :cond_8
    if-nez v11, :cond_a

    .line 254
    const/16 v14, 0x3e8

    :try_start_4
    iput v14, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->errorNo:I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 263
    :goto_5
    iget v14, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->errorNo:I

    const/16 v15, 0x3e8

    if-ne v14, v15, :cond_0

    .line 264
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->handleError(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 265
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x4

    if-eq v14, v15, :cond_b

    .line 266
    :cond_9
    sget-object v14, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    const-string v15, "parseResponse : forecast data parse error in 3.5 situation!"

    invoke-virtual {v14, v15}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->w(Ljava/lang/String;)V

    .line 267
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 256
    :cond_a
    const/16 v14, 0x459

    :try_start_5
    iput v14, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->errorNo:I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 269
    :cond_b
    iput-object v5, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    goto/16 :goto_0
.end method

.method private static parseDate(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .parameter "text"

    .prologue
    .line 365
    const/4 v0, 0x0

    .line 366
    .local v0, dateOut:Ljava/util/Date;
    if-eqz p0, :cond_0

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " +0800"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, text1:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "yyyy-MM-dd Z"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 374
    .end local v2           #text1:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 376
    :goto_1
    return-object v3

    .line 370
    .restart local v2       #text1:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 371
    .local v1, e:Lorg/apache/http/impl/cookie/DateParseException;
    sget-object v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseTime: can not parse date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 376
    .end local v1           #e:Lorg/apache/http/impl/cookie/DateParseException;
    .end local v2           #text1:Ljava/lang/String;
    :cond_1
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_1
.end method

.method private static parseIconDay(Ljava/lang/String;)Z
    .locals 3
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 380
    invoke-static {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->checkStringLegal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    const/4 v1, 0x1

    .line 388
    :cond_0
    :goto_0
    return v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, ex:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static parseTemperature(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 12
    .parameter "context"
    .parameter "text"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 319
    const/4 v5, 0x0

    .line 320
    .local v5, temperatures:[Ljava/lang/String;
    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 321
    .local v4, result:[I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01dc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, degree:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c01b3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, delimiter:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 325
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 330
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    array-length v6, v5

    if-ne v6, v11, :cond_2

    .line 331
    aget-object v6, v5, v9

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 332
    aget-object v6, v5, v9

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 333
    .local v3, index:I
    aget-object v6, v5, v9

    invoke-virtual {v6, v10, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 335
    .end local v3           #index:I
    :cond_1
    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v10

    .line 336
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v9

    .line 337
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Temperature hight : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", low : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->i(Ljava/lang/String;)V

    .line 339
    :cond_2
    return-object v4

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, ex:Ljava/lang/Exception;
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parse temperature, Reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x80t
        0x0t 0x0t 0x0t 0x80t
    .end array-data
.end method

.method private static parseTime(Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .parameter "text"

    .prologue
    .line 346
    const/4 v2, 0x0

    .line 347
    .local v2, timeOut:Ljava/util/Date;
    if-eqz p0, :cond_0

    .line 350
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 351
    .local v1, text1:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 352
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #timeOut:Ljava/util/Date;
    .local v3, timeOut:Ljava/util/Date;
    move-object v2, v3

    .line 357
    .end local v1           #text1:Ljava/lang/Integer;
    .end local v3           #timeOut:Ljava/util/Date;
    .restart local v2       #timeOut:Ljava/util/Date;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 358
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 359
    :goto_1
    return-object v4

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseTime: can not parse time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1
.end method

.method private static setIcon(Ljava/lang/String;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;Landroid/content/Context;)V
    .locals 3
    .parameter "condition"
    .parameter "forecast"
    .parameter "context"

    .prologue
    .line 276
    const/4 v2, 0x1

    invoke-static {p2, p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->formateIconValue(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    .line 277
    .local v0, day:I
    const/4 v2, 0x0

    invoke-static {p2, p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->formateIconValue(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    .line 278
    .local v1, night:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setIconDay(Ljava/lang/String;)V

    .line 279
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setIconNight(Ljava/lang/String;)V

    .line 280
    return-void
.end method


# virtual methods
.method public fromContentValues(Landroid/content/ContentValues;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v0, "locationCode"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;

    .line 91
    const-string v0, "validStart"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->validStart:J

    .line 92
    const-string v0, "tempCur"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    .line 93
    const-string v0, "tempCal"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCal:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "date1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    .line 96
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "tempHigh1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setTempHigh(I)V

    .line 97
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "tempLow1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setTempLow(I)V

    .line 98
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "conditions1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setConditions(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "iconDay1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setIconDay(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "iconNight1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setIconNight(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "wind1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setWind(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "date2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    .line 104
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "tempHigh2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setTempHigh(I)V

    .line 105
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "tempLow2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setTempLow(I)V

    .line 106
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "conditions2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setConditions(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "iconDay2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setIconDay(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "iconNight2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setIconNight(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "wind2"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setWind(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "date3"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    .line 112
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "tempHigh3"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setTempHigh(I)V

    .line 113
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "tempLow3"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setTempLow(I)V

    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "conditions3"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setConditions(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "iconDay3"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setIconDay(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "iconNight3"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setIconNight(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "wind3"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setWind(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "date4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    .line 120
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "tempHigh4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setTempHigh(I)V

    .line 121
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "tempLow4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setTempLow(I)V

    .line 122
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "conditions4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setConditions(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "iconDay4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setIconDay(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "iconNight4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setIconNight(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    const-string v1, "wind4"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->setWind(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forecastOneDays.get(0) condition :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conditions1"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forecastOneDays.get(1) condition :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conditions2"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forecastOneDays.get(2) condition :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conditions3"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forecastOneDays.get(3) condition :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "conditions4"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 135
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "locationCode"

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->locationCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "validStart"

    iget-wide v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->validStart:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string v1, "tempCur"

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v1, "tempCal"

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCal:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v2, "date1"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v3, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string v2, "tempHigh1"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getTempHigh()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v2, "tempLow1"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getTempLow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v2, "conditions1"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getConditions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v2, "iconDay1"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getIconDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "iconNight1"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getIconNight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "wind1"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getWind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v2, "date2"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v3, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    const-string v2, "tempHigh2"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getTempHigh()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v2, "tempLow2"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getTempLow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v2, "conditions2"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getConditions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v2, "iconDay2"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getIconDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v2, "iconNight2"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getIconNight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v2, "wind2"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getWind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "date3"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v3, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const-string v2, "tempHigh3"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getTempHigh()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v2, "tempLow3"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getTempLow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v2, "conditions3"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getConditions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "iconDay3"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getIconDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v2, "iconNight3"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getIconNight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v2, "wind3"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getWind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v2, "date4"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v3, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v2, "tempHigh4"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getTempHigh()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v2, "tempLow4"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getTempLow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v2, "conditions4"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getConditions()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "iconDay4"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getIconDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "iconNight4"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getIconNight()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v2, "wind4"

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->getWind()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-object v0
.end method
