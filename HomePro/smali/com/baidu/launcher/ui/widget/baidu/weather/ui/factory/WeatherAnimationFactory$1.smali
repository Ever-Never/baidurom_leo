.class final Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$1;
.super Ljava/lang/Object;
.source "WeatherAnimationFactory.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getNightMeteorAnimation(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter "input"

    .prologue
    const/high16 v2, 0x3f80

    .line 71
    const v0, 0x3f6353f8

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 72
    const v0, 0x3a83126f

    .line 74
    :goto_0
    return v0

    :cond_0
    sub-float v0, v2, p1

    const v1, 0x3de56042

    div-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method
