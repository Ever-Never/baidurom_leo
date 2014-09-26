.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;
.super Ljava/lang/Object;
.source "WeatherWidgetTransparent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 262
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 265
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    .line 271
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 269
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
