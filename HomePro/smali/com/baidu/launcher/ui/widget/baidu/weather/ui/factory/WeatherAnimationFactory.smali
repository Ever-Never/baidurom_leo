.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;
.super Ljava/lang/Object;
.source "WeatherAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$WeatherAnimatorListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static final getAlphaAnimation(FFJ)Landroid/view/animation/Animation;
    .locals 2
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "duration"

    .prologue
    .line 31
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 32
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 33
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 34
    return-object v0
.end method

.method public static getNightMeteorAnimation(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;
    .locals 11
    .parameter "view"
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 60
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 61
    .local v3, as:Landroid/animation/AnimatorSet;
    const-string v4, "translationX"

    new-array v5, v6, [F

    aput p1, v5, v7

    aput p2, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 62
    .local v1, animTranslationX:Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 63
    const-string v4, "translationY"

    new-array v5, v6, [F

    aput p3, v5, v7

    aput p4, v5, v8

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 64
    .local v2, animTranslationY:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 65
    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 66
    .local v0, animAlpha:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 67
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$1;

    invoke-direct {v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$1;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 78
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v1, v4, v7

    aput-object v2, v4, v8

    aput-object v0, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 79
    new-instance v4, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$WeatherAnimatorListener;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$WeatherAnimatorListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 80
    return-object v3

    .line 65
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3ct
    .end array-data
.end method

.method public static getNightMoonAnimation()Landroid/view/animation/AnimationSet;
    .locals 4

    .prologue
    .line 105
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 106
    .local v1, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 107
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$3;

    invoke-direct {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$3;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 120
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 121
    const-wide/16 v2, 0x4b0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 122
    return-object v1
.end method

.method public static getNightStarAnimation(FF)Landroid/view/animation/AnimationSet;
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v4, 0x5dc

    .line 84
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 85
    .local v8, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    .local v6, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$2;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$2;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 97
    invoke-virtual {v6, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    move v0, p0

    move v1, p0

    move v2, p1

    move v3, p1

    .line 98
    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v7

    .line 99
    .local v7, animation:Landroid/view/animation/Animation;
    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 100
    invoke-virtual {v8, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 101
    return-object v8
.end method

.method public static getSunALightAnimation()Landroid/view/animation/AnimationSet;
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    const/high16 v1, 0x3f00

    .line 126
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 127
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 130
    .local v0, sa:Landroid/view/animation/ScaleAnimation;
    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$4;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 143
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 144
    const-wide/16 v1, 0x5dc

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 145
    return-object v9
.end method

.method public static getSunLightBAnimator(Landroid/view/View;FF)Landroid/animation/AnimatorSet;
    .locals 12
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v10, 0x708

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 149
    const-string v5, "rotation"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 150
    .local v1, animRotate:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x640

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 151
    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 152
    .local v0, animAlpha:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 153
    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$5;

    invoke-direct {v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$5;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    const-string v5, "translationX"

    new-array v6, v7, [F

    aput p1, v6, v8

    aput p1, v6, v9

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 165
    .local v2, animTranslationX:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 166
    const-string v5, "translationY"

    new-array v6, v7, [F

    aput p2, v6, v8

    aput p2, v6, v9

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 167
    .local v3, animTranslationY:Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 169
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 170
    .local v4, as:Landroid/animation/AnimatorSet;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    aput-object v2, v5, v7

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 171
    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$WeatherAnimatorListener;

    invoke-direct {v5, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$WeatherAnimatorListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 172
    return-object v4

    .line 149
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x70t 0xc2t
        0x0t 0x0t 0x70t 0x42t
    .end array-data

    .line 151
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3ct
    .end array-data
.end method

.method public static getSunStarAnimation(Landroid/view/View;FF)Landroid/animation/AnimatorSet;
    .locals 12
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v10, 0x708

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 176
    const-string v5, "rotation"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 177
    .local v1, animRotate:Landroid/animation/ObjectAnimator;
    const-wide/16 v5, 0x640

    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 178
    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 179
    .local v0, animAlpha:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 180
    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$6;

    invoke-direct {v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$6;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 191
    const-string v5, "translationX"

    new-array v6, v7, [F

    aput p1, v6, v8

    aput p1, v6, v9

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 192
    .local v2, animTranslationX:Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 193
    const-string v5, "translationY"

    new-array v6, v7, [F

    aput p2, v6, v8

    aput p2, v6, v9

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 194
    .local v3, animTranslationY:Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 196
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 197
    .local v4, as:Landroid/animation/AnimatorSet;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    aput-object v2, v5, v7

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 198
    new-instance v5, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$WeatherAnimatorListener;

    invoke-direct {v5, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory$WeatherAnimatorListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 199
    return-object v4

    .line 176
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x34t 0x42t
    .end array-data

    .line 178
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0xat 0xd7t 0x23t 0x3ct
    .end array-data
.end method

.method public static final getTranslateAnimation(FFFFJ)Landroid/view/animation/Animation;
    .locals 2
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "duration"

    .prologue
    .line 24
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 25
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p4, p5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 26
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 27
    return-object v0
.end method

.method public static final getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;
    .locals 7
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "duration"

    .prologue
    .line 39
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 40
    .local v1, set:Landroid/view/animation/AnimationSet;
    invoke-static/range {p0 .. p5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v2

    .line 41
    .local v2, translateAnimation:Landroid/view/animation/Animation;
    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    const-wide/16 v5, 0xc8

    invoke-static {v3, v4, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 42
    .local v0, alphaAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 43
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 44
    return-object v1
.end method

.method public static final getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;
    .locals 7
    .parameter "fromX"
    .parameter "toX"
    .parameter "fromY"
    .parameter "toY"
    .parameter "duration"

    .prologue
    .line 49
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 50
    .local v1, set:Landroid/view/animation/AnimationSet;
    invoke-static/range {p0 .. p5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v2

    .line 51
    .local v2, translateAnimation:Landroid/view/animation/Animation;
    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const-wide/16 v5, 0xc8

    invoke-static {v3, v4, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v0

    .line 52
    .local v0, alphaAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 53
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 54
    return-object v1
.end method
