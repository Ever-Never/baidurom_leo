.class public interface abstract Lcom/baidu/launcher/ui/widget/baidu/weather/service/IForecastService;
.super Ljava/lang/Object;
.source "IForecastService.java"


# virtual methods
.method public abstract getByLocationCode(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
.end method

.method public abstract getByLongitudeAndLatitude(DD)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;
.end method

.method public abstract getPMbyLocationCode(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;
.end method
