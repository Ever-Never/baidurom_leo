.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$2;
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
    .line 183
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, city:Ljava/lang/String;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->openSetLocationLayer(Ljava/lang/String;)V

    .line 190
    return-void
.end method
