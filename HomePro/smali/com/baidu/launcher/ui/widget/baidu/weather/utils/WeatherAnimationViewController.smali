.class public Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;
.super Ljava/lang/Object;
.source "WeatherAnimationViewController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# static fields
.field private static mResourceId:I


# instance fields
.field private isAnimationFinished:Z

.field private mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mImageViewBehind1:Landroid/widget/ImageView;

.field private mImageViewBehind1Animation:Landroid/view/animation/AnimationSet;

.field private mImageViewBehind2:Landroid/widget/ImageView;

.field private mImageViewBehind2Animation:Landroid/view/animation/AnimationSet;

.field private mImageViewBehind3:Landroid/widget/ImageView;

.field private mImageViewBehind3Animation:Landroid/view/animation/AnimationSet;

.field private mImageViewBehindAllCover:Landroid/widget/ImageView;

.field private mImageViewFront1:Landroid/widget/ImageView;

.field private mImageViewFront1Animation:Landroid/view/animation/AnimationSet;

.field private mImageViewFront2:Landroid/widget/ImageView;

.field private mImageViewFront2Animation:Landroid/view/animation/AnimationSet;

.field private final mIsTransparent:Z

.field private mOffset:I

.field private mWeatherIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Z)V
    .locals 1
    .parameter "context"
    .parameter "framelayout"
    .parameter "behindWeatherIconLayout"
    .parameter "isTransparent"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->isAnimationFinished:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mHandler:Landroid/os/Handler;

    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 46
    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

    .line 47
    iput-boolean p4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mIsTransparent:Z

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initAnimationListener()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1Animation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1Animation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2Animation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2Animation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3Animation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3Animation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1Animation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1Animation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2Animation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_4

    .line 149
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2Animation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 151
    :cond_4
    return-void
.end method

.method private initNightMoonAnimation()V
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getNightMoonAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1Animation:Landroid/view/animation/AnimationSet;

    .line 192
    return-void
.end method

.method private initNightStarAnimation()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getNightStarAnimation(FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2Animation:Landroid/view/animation/AnimationSet;

    .line 185
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getNightStarAnimation(FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3Animation:Landroid/view/animation/AnimationSet;

    .line 187
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3Animation:Landroid/view/animation/AnimationSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 188
    return-void
.end method

.method private initSunALightAnimation()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getSunALightAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1Animation:Landroid/view/animation/AnimationSet;

    .line 96
    return-void
.end method

.method private setNightAnimationView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x3dcc

    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mIsTransparent:Z

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    const v1, 0x7f0203bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehindAllCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    const v1, 0x7f020353

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    const v1, 0x7f020352

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 163
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    const v1, 0x7f020351

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 164
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 165
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2:Landroid/widget/ImageView;

    const v1, 0x7f020354

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3:Landroid/widget/ImageView;

    const v1, 0x7f020355

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 177
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->initNightStarAnimation()V

    .line 178
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->initNightMoonAnimation()V

    .line 179
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->initAnimationListener()V

    .line 180
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    const v1, 0x7f020350

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    const v1, 0x7f0203c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    const v1, 0x7f0203c0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 172
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    const v1, 0x7f0203bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 174
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2:Landroid/widget/ImageView;

    const v1, 0x7f0203c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3:Landroid/widget/ImageView;

    const v1, 0x7f0203c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setSunAnimationView()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mIsTransparent:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    const v1, 0x7f020356

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    const v1, 0x7f020357

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    const v1, 0x7f020358

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    const v1, 0x7f020359

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->initSunALightAnimation()V

    .line 132
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->initAnimationListener()V

    .line 133
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    const v1, 0x7f0203ca

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    const v1, 0x7f0203cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    const v1, 0x7f0203cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    const v1, 0x7f0203ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private startNightAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 210
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1Animation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 235
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2Animation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 236
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3Animation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 237
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    return-void
.end method

.method private startSunAnimation()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 243
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1Animation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    invoke-static {v2, v4, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getSunLightBAnimator(Landroid/view/View;FF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 248
    .local v0, front1AS:Landroid/animation/AnimatorSet;
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 249
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    invoke-static {v2, v4, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getSunStarAnimation(Landroid/view/View;FF)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 250
    .local v1, mFront2AS:Landroid/animation/AnimatorSet;
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 251
    return-void
.end method


# virtual methods
.method public getShinningOffset()I
    .locals 2

    .prologue
    .line 288
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mOffset:I

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mOffset:I

    .line 292
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mOffset:I

    return v0
.end method

.method public getWeatherIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public initWeatherLayout()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 51
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 52
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    .local v1, sunlp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x51

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 55
    const/16 v2, -0x14

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 56
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    .line 57
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 60
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x31

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 62
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    .line 63
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    .line 65
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mIsTransparent:Z

    if-nez v2, :cond_0

    .line 67
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

    const v3, 0x7f080291

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehindAllCover:Landroid/widget/ImageView;

    .line 70
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    .line 71
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2:Landroid/widget/ImageView;

    .line 73
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3:Landroid/widget/ImageView;

    .line 75
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 78
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 80
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 81
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 82
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mIsTransparent:Z

    if-nez v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehindAllCover:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    return-void
.end method

.method public isAnimationFinished()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->isAnimationFinished:Z

    return v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/16 v1, 0x8

    .line 260
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1Animation:Landroid/view/animation/AnimationSet;

    if-ne p1, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2Animation:Landroid/view/animation/AnimationSet;

    if-ne p1, v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewFront2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1Animation:Landroid/view/animation/AnimationSet;

    if-ne p1, v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->isAnimationFinished:Z

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2Animation:Landroid/view/animation/AnimationSet;

    if-ne p1, v0, :cond_3

    .line 271
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3Animation:Landroid/view/animation/AnimationSet;

    if-ne p1, v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehind3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    :cond_4
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 281
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 256
    return-void
.end method

.method public setAnimationResource(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 99
    sput p1, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mResourceId:I

    .line 100
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mIsTransparent:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mImageViewBehindAllCover:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    :goto_1
    return-void

    .line 106
    :sswitch_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->setSunAnimationView()V

    goto :goto_1

    .line 110
    :sswitch_1
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->setNightAnimationView()V

    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x7f020350 -> :sswitch_1
        0x7f020356 -> :sswitch_0
        0x7f0203bc -> :sswitch_1
        0x7f0203ca -> :sswitch_0
    .end sparse-switch
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    sget v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->mResourceId:I

    sparse-switch v0, :sswitch_data_0

    .line 207
    :goto_0
    return-void

    .line 198
    :sswitch_0
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->isAnimationFinished:Z

    .line 199
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->startSunAnimation()V

    goto :goto_0

    .line 203
    :sswitch_1
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->isAnimationFinished:Z

    .line 204
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->startNightAnimation()V

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020350 -> :sswitch_1
        0x7f020356 -> :sswitch_0
        0x7f0203bc -> :sswitch_1
        0x7f0203ca -> :sswitch_0
    .end sparse-switch
.end method
