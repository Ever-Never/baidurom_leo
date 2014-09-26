.class final Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$3;
.super Ljava/lang/Object;
.source "WeatherAnimationFactory.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getNightMoonAnimation()Landroid/view/animation/AnimationSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .parameter "input"

    .prologue
    const/high16 v2, 0x4080

    const/high16 v1, 0x3f80

    .line 111
    const/high16 v0, 0x3f00

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 112
    mul-float v0, p1, p1

    mul-float p1, v0, v2

    .line 116
    :goto_0
    return p1

    .line 114
    :cond_0
    sub-float v0, v1, p1

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    mul-float p1, v0, v2

    goto :goto_0
.end method
