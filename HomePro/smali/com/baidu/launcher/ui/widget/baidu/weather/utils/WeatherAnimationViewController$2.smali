.class Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$2;
.super Ljava/lang/Object;
.source "WeatherAnimationViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->startNightAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 225
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;
    invoke-static {v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getNightMeteorAnimation(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 229
    .local v0, as:Landroid/animation/AnimatorSet;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 230
    return-void
.end method
