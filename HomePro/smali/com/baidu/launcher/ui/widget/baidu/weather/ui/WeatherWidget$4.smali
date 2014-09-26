.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;
.super Ljava/lang/Object;
.source "WeatherWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const v2, 0x7f0c01de

    .line 226
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 227
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 229
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 233
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    .line 239
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 237
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c01d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
