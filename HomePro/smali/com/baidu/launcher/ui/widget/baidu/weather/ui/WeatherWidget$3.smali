.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;
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
    .line 186
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

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

    .line 190
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->isAnimationFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z
    invoke-static {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$102(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;Z)Z

    .line 192
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mIsSunRised:Z
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->sunRise()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V

    .line 194
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mIsSunRised:Z
    invoke-static {v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$302(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;Z)Z

    .line 199
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 201
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 202
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 205
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->sunSet()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V

    .line 197
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mIsSunRised:Z
    invoke-static {v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$302(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;Z)Z

    goto :goto_0
.end method
