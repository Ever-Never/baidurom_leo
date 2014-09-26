.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;
.super Ljava/lang/Object;
.source "WeatherWidget.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;
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
    .line 244
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBanner:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBanner:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBannerShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->startAnimation()V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBannerShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsOneShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 265
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsTwoShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 267
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z
    invoke-static {v0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$102(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;Z)Z

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClockDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClock:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDownDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLeftBottom:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mRightBottom:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 281
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTempShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 283
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPmCondition:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPmCondition:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackPmConditionShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 285
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z
    invoke-static {v0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$102(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;Z)Z

    .line 287
    :cond_5
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 288
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 292
    :cond_6
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 293
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTempDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 295
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPmCondition:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 296
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBanner:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBannerDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 298
    :cond_7
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_8

    .line 299
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :cond_8
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionThreeDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 302
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeView:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_9
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTempDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_a

    .line 305
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 307
    :cond_a
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 308
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPmCondition:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBanner:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$1400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClock:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClock:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClockShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$4000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    :cond_b
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClockShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$4000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_c

    .line 314
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLeftBottom:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDownShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$4100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 315
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mRightBottom:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDownShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$4100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$4200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 317
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLeftBottom:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mRightBottom:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$2700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateZone:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$4300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 321
    :cond_c
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerShowAnimation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$4200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 322
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->access$3300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 324
    :cond_d
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 253
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 248
    return-void
.end method
