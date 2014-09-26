.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$7;
.super Ljava/lang/Thread;
.source "WeatherWidgetTransparent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->onPMDataChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

.field final synthetic val$pm:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$7;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$7;->val$pm:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$7;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "setting.system.weatherwidget_pm"

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$7;->val$pm:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 835
    return-void
.end method
