.class public interface abstract Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
.super Ljava/lang/Object;
.source "WeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WeatherChangeListener"
.end annotation


# virtual methods
.method public abstract onAutoLocationFail()V
.end method

.method public abstract onCheckAutoUpdate()V
.end method

.method public abstract onError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Ljava/lang/String;)V
.end method

.method public abstract onLocationChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Ljava/lang/String;)V
.end method

.method public abstract onPMDataChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;)V
.end method

.method public abstract onWeatherChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;)V
.end method

.method public abstract onWeatherRestored(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;)V
.end method
