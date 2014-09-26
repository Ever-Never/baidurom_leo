.class final Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$2;
.super Ljava/lang/Object;
.source "WeatherAnimationFactory.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getNightStarAnimation(FF)Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5
    .parameter "input"

    .prologue
    const/high16 v4, 0x4000

    .line 90
    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 91
    mul-float v0, p1, v4

    .line 93
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    sub-float/2addr v0, p1

    mul-float/2addr v0, v4

    goto :goto_0
.end method
