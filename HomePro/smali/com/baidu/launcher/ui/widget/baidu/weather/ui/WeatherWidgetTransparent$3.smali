.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;
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
    .line 202
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 206
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mEnableFlip:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->isAnimationFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mEnableFlip:Z
    invoke-static {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$202(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;Z)Z

    .line 208
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mIsSunRised:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->sunRise()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mIsSunRised:Z
    invoke-static {v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$402(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;Z)Z

    .line 215
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 217
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 218
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$700()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 221
    :cond_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->sunSet()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    .line 213
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mIsSunRised:Z
    invoke-static {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->access$402(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;Z)Z

    goto :goto_0
.end method
