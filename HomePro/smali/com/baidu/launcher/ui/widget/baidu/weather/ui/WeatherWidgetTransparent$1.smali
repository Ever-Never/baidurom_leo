.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$1;
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
    .line 147
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 151
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->queryClockLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, clockIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
