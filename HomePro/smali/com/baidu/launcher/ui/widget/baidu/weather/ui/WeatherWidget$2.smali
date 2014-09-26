.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$2;
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
    .line 166
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 170
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, city:Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestSetLocation()V

    .line 172
    return-void
.end method
