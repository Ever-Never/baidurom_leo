.class public Lcom/baidu/launcher/ui/animation/Choreographer;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x12c

.field private static final DURATION_DELTA:I = 0x1e

.field private static final FOLDER_DURATION:I = 0xc8

.field private static final FOLDER_ONE_PAGE_MAX_ITEM_NUMS:I = 0x8

.field private static final SCALE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "Choreographer"

.field private static blurView:Landroid/view/View;

.field private static mAnimTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

.field private static mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsAniming:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/animation/Choreographer;->mIsAniming:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/animation/Choreographer;->mBitmaps:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 752
    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    sput-boolean p0, Lcom/baidu/launcher/ui/animation/Choreographer;->mIsAniming:Z

    return p0
.end method

.method static synthetic access$200()Landroid/view/View;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/homeview/HomeView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/baidu/launcher/ui/animation/Choreographer;->getHomeViewBitmap(Lcom/baidu/launcher/ui/homeview/HomeView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/baidu/launcher/ui/animation/Choreographer;->getWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/baidu/launcher/ui/animation/Choreographer;->mergeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/baidu/launcher/ui/animation/Choreographer;->showFolderBlurBg(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static blurBackground(Landroid/content/Context;Lcom/baidu/launcher/ui/homeview/HomeView;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "context"
    .parameter "mHomeView"

    .prologue
    .line 89
    invoke-static {p1}, Lcom/baidu/launcher/ui/animation/Choreographer;->getHomeViewBitmap(Lcom/baidu/launcher/ui/homeview/HomeView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    .local v0, homeViewBM:Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/baidu/launcher/ui/animation/Choreographer;->getWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 92
    .local v1, wallpaperBM:Landroid/graphics/Bitmap;
    invoke-static {p0, v0, v1}, Lcom/baidu/launcher/ui/animation/Choreographer;->mergeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    return-object v2
.end method

.method public static closeWeatherAnim(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V
    .locals 12
    .parameter "mLauncher"
    .parameter "setLocationLayer"

    .prologue
    .line 621
    sget-boolean v8, Lcom/baidu/launcher/ui/animation/Choreographer;->mIsAniming:Z

    if-eqz v8, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->isHardwareAccelerated()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 625
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 627
    :cond_2
    const v8, 0x7f08013a

    invoke-virtual {p0, v8}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/homeview/HomeView;

    .line 628
    .local v4, mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/baidu/launcher/ui/animation/Choreographer;->getHomeViewZoomAnim(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v2

    .line 629
    .local v2, animation:Landroid/view/animation/Animation;
    invoke-virtual {v4, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 630
    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 632
    .local v1, alphaOut:Landroid/animation/PropertyValuesHolder;
    const-string v8, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 634
    .local v6, scaleXOut:Landroid/animation/PropertyValuesHolder;
    const-string v8, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 636
    .local v7, scaleYOut:Landroid/animation/PropertyValuesHolder;
    const-string v8, "Y"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p0}, Lcom/baidu/bulletin/ui/Utilities;->getHeightPixels(Landroid/content/Context;)I

    move-result v11

    div-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    aput v11, v9, v10

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 638
    .local v0, YOut:Landroid/animation/PropertyValuesHolder;
    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v9, 0x2

    aput-object v7, v8, v9

    const/4 v9, 0x3

    aput-object v0, v8, v9

    invoke-static {p1, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 640
    .local v5, outAnimation:Landroid/animation/ObjectAnimator;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x3f80

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 641
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 642
    new-instance v8, Lcom/baidu/launcher/ui/animation/Choreographer$7;

    invoke-direct {v8, p1}, Lcom/baidu/launcher/ui/animation/Choreographer$7;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V

    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 653
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 654
    sget v8, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v9, 0xf

    if-le v8, v9, :cond_0

    .line 655
    sget-object v8, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    if-nez v8, :cond_3

    .line 656
    invoke-static {p0}, Lcom/baidu/launcher/ui/animation/Choreographer;->getBlurView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v8

    sput-object v8, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    .line 658
    :cond_3
    sget-object v8, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 659
    sget-object v8, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 661
    :cond_4
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    invoke-direct {v3, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 662
    .local v3, blurViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 663
    new-instance v8, Lcom/baidu/launcher/ui/animation/Choreographer$8;

    invoke-direct {v8, p0}, Lcom/baidu/launcher/ui/animation/Choreographer$8;-><init>(Lcom/baidu/launcher/app/Launcher;)V

    invoke-virtual {v3, v8}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 673
    sget-object v8, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 630
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 632
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 634
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data
.end method

.method public static dw2BlurBm(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "drawable"

    .prologue
    const/4 v6, 0x0

    .line 176
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 185
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 186
    const/16 v2, 0xf

    invoke-static {p0, v0, v2}, Lcom/baidu/launcher/ui/animation/Choreographer;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    return-object v0

    .line 176
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 42
    .parameter "context"
    .parameter "sentBitmap"
    .parameter "radius"

    .prologue
    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 194
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ge v0, v4, :cond_0

    .line 195
    const/4 v2, 0x0

    .line 387
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 198
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 199
    .local v5, w:I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 201
    .local v9, h:I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 202
    .local v3, pix:[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 204
    add-int/lit8 v36, v5, -0x1

    .line 205
    .local v36, wm:I
    add-int/lit8 v21, v9, -0x1

    .line 206
    .local v21, hm:I
    mul-int v35, v5, v9

    .line 207
    .local v35, wh:I
    add-int v4, p2, p2

    add-int/lit8 v14, v4, 0x1

    .line 209
    .local v14, div:I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 210
    .local v24, r:[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 211
    .local v17, g:[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 213
    .local v10, b:[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 215
    .local v34, vmin:[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 216
    .local v15, divsum:I
    mul-int/2addr v15, v15

    .line 217
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 218
    .local v16, dv:[I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    .line 219
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 218
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 222
    :cond_1
    const/16 v39, 0x0

    .local v39, yi:I
    move/from16 v41, v39

    .line 224
    .local v41, yw:I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 229
    .local v31, stack:[[I
    add-int/lit8 v25, p2, 0x1

    .line 233
    .local v25, r1:I
    const/16 v38, 0x0

    .local v38, y:I
    :goto_2
    move/from16 v0, v38

    if-ge v0, v9, :cond_6

    .line 234
    const/4 v13, 0x0

    .local v13, bsum:I
    move/from16 v20, v13

    .local v20, gsum:I
    move/from16 v29, v13

    .local v29, rsum:I
    move v12, v13

    .local v12, boutsum:I
    move/from16 v19, v13

    .local v19, goutsum:I
    move/from16 v28, v13

    .local v28, routsum:I
    move v11, v13

    .local v11, binsum:I
    move/from16 v18, v13

    .local v18, ginsum:I
    move/from16 v27, v13

    .line 235
    .local v27, rinsum:I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, p2

    if-gt v0, v1, :cond_3

    .line 236
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .line 237
    .local v23, p:I
    add-int v4, v22, p2

    aget-object v30, v31, v4

    .line 238
    .local v30, sir:[I
    const/4 v4, 0x0

    const/high16 v6, 0xff

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 239
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 240
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 241
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 242
    .local v26, rbs:I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 243
    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 244
    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 245
    if-lez v22, :cond_2

    .line 246
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 247
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 248
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 235
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 250
    :cond_2
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 251
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 252
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_4

    .line 255
    .end local v23           #p:I
    .end local v26           #rbs:I
    .end local v30           #sir:[I
    :cond_3
    move/from16 v32, p2

    .line 257
    .local v32, stackpointer:I
    const/16 v37, 0x0

    .local v37, x:I
    :goto_5
    move/from16 v0, v37

    if-ge v0, v5, :cond_5

    .line 259
    aget v4, v16, v29

    aput v4, v24, v39

    .line 260
    aget v4, v16, v20

    aput v4, v17, v39

    .line 261
    aget v4, v16, v13

    aput v4, v10, v39

    .line 263
    sub-int v29, v29, v28

    .line 264
    sub-int v20, v20, v19

    .line 265
    sub-int/2addr v13, v12

    .line 267
    sub-int v4, v32, p2

    add-int v33, v4, v14

    .line 268
    .local v33, stackstart:I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 270
    .restart local v30       #sir:[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 271
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 272
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 274
    if-nez v38, :cond_4

    .line 275
    add-int v4, v37, p2

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 277
    :cond_4
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .line 279
    .restart local v23       #p:I
    const/4 v4, 0x0

    const/high16 v6, 0xff

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 280
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 281
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 283
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 284
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 285
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 287
    add-int v29, v29, v27

    .line 288
    add-int v20, v20, v18

    .line 289
    add-int/2addr v13, v11

    .line 291
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 292
    rem-int v4, v32, v14

    aget-object v30, v31, v4

    .line 294
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 295
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 296
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 298
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 299
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 300
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 302
    add-int/lit8 v39, v39, 0x1

    .line 257
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    .line 304
    .end local v23           #p:I
    .end local v30           #sir:[I
    .end local v33           #stackstart:I
    :cond_5
    add-int v41, v41, v5

    .line 233
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    .line 306
    .end local v11           #binsum:I
    .end local v12           #boutsum:I
    .end local v13           #bsum:I
    .end local v18           #ginsum:I
    .end local v19           #goutsum:I
    .end local v20           #gsum:I
    .end local v27           #rinsum:I
    .end local v28           #routsum:I
    .end local v29           #rsum:I
    .end local v32           #stackpointer:I
    .end local v37           #x:I
    :cond_6
    const/16 v37, 0x0

    .restart local v37       #x:I
    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_c

    .line 307
    const/4 v13, 0x0

    .restart local v13       #bsum:I
    move/from16 v20, v13

    .restart local v20       #gsum:I
    move/from16 v29, v13

    .restart local v29       #rsum:I
    move v12, v13

    .restart local v12       #boutsum:I
    move/from16 v19, v13

    .restart local v19       #goutsum:I
    move/from16 v28, v13

    .restart local v28       #routsum:I
    move v11, v13

    .restart local v11       #binsum:I
    move/from16 v18, v13

    .restart local v18       #ginsum:I
    move/from16 v27, v13

    .line 308
    .restart local v27       #rinsum:I
    move/from16 v0, p2

    neg-int v4, v0

    mul-int v40, v4, v5

    .line 309
    .local v40, yp:I
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, p2

    if-gt v0, v1, :cond_9

    .line 310
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 312
    add-int v4, v22, p2

    aget-object v30, v31, v4

    .line 314
    .restart local v30       #sir:[I
    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    .line 315
    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    .line 316
    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    .line 318
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 320
    .restart local v26       #rbs:I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 321
    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 322
    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 324
    if-lez v22, :cond_8

    .line 325
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 326
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 327
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 334
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 335
    add-int v40, v40, v5

    .line 309
    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    .line 329
    :cond_8
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 330
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 331
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_8

    .line 338
    .end local v26           #rbs:I
    .end local v30           #sir:[I
    :cond_9
    move/from16 v39, v37

    .line 339
    move/from16 v32, p2

    .line 340
    .restart local v32       #stackpointer:I
    const/16 v38, 0x0

    :goto_9
    move/from16 v0, v38

    if-ge v0, v9, :cond_b

    .line 341
    const/high16 v4, -0x100

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 343
    sub-int v29, v29, v28

    .line 344
    sub-int v20, v20, v19

    .line 345
    sub-int/2addr v13, v12

    .line 347
    sub-int v4, v32, p2

    add-int v33, v4, v14

    .line 348
    .restart local v33       #stackstart:I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 350
    .restart local v30       #sir:[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 351
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 352
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 354
    if-nez v37, :cond_a

    .line 355
    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 357
    :cond_a
    aget v4, v34, v38

    add-int v23, v37, v4

    .line 359
    .restart local v23       #p:I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    .line 360
    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    .line 361
    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    .line 363
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 364
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 365
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 367
    add-int v29, v29, v27

    .line 368
    add-int v20, v20, v18

    .line 369
    add-int/2addr v13, v11

    .line 371
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 372
    aget-object v30, v31, v32

    .line 374
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 375
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 376
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 378
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 379
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 380
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 382
    add-int v39, v39, v5

    .line 340
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_9

    .line 306
    .end local v23           #p:I
    .end local v30           #sir:[I
    .end local v33           #stackstart:I
    :cond_b
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    .line 386
    .end local v11           #binsum:I
    .end local v12           #boutsum:I
    .end local v13           #bsum:I
    .end local v18           #ginsum:I
    .end local v19           #goutsum:I
    .end local v20           #gsum:I
    .end local v27           #rinsum:I
    .end local v28           #routsum:I
    .end local v29           #rsum:I
    .end local v32           #stackpointer:I
    .end local v40           #yp:I
    :cond_c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method

.method public static getBlurView(Landroid/app/Activity;)Landroid/view/View;
    .locals 5
    .parameter "launcher"

    .prologue
    const/4 v4, -0x1

    .line 699
    sget-object v2, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 700
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 701
    .local v0, decorView:Landroid/widget/FrameLayout;
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    .line 702
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 703
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    sget-object v2, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 705
    .end local v0           #decorView:Landroid/widget/FrameLayout;
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    sget-object v2, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    return-object v2
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method private static getHomeViewBitmap(Lcom/baidu/launcher/ui/homeview/HomeView;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "mHomeView"

    .prologue
    const/4 v4, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/ui/animation/Choreographer;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 120
    .local v2, mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/homeview/HomeView;->setDrawingCacheEnabled(Z)V

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, homeViewBMOrigin:Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 124
    .local v0, homeViewBM:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x5

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v4, v4, 0x5

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/HomeView;->destroyDrawingCache()V

    .line 129
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    const/4 v1, 0x0

    .line 134
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/HomeView;->setDrawingCacheEnabled(Z)V

    .line 135
    if-eqz v0, :cond_0

    sget-object v3, Lcom/baidu/launcher/ui/animation/Choreographer;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    return-object v0

    .line 131
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static final getHomeViewZoomAnim(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .locals 2
    .parameter "context"
    .parameter "zoomOut"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, homeViewZoom:Landroid/view/animation/Animation;
    if-nez p1, :cond_0

    .line 80
    const v1, 0x7f040011

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :cond_0
    const v1, 0x7f040012

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method public static getViewPos(Landroid/view/View;)[I
    .locals 2
    .parameter "view"

    .prologue
    .line 72
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 73
    .local v0, pos:[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 74
    return-object v0
.end method

.method private static getWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 140
    invoke-static {p0}, Lcom/baidu/launcher/ui/animation/Choreographer;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 141
    .local v2, mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    .line 142
    .local v6, wallpaperManager:Landroid/app/WallpaperManager;
    const/4 v3, 0x0

    .line 143
    .local v3, wallpBitmapOrigin:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 145
    .local v4, wallpaperBM:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v1, 0x0

    .line 146
    .local v1, isLiveWallpaper:Z
    :cond_0
    const/4 v5, 0x0

    .line 147
    .local v5, wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 150
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->peekDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 151
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v7, v7, 0x5

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v8, v8, 0x5

    const/4 v9, 0x1

    invoke-static {v3, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 171
    .end local v1           #isLiveWallpaper:Z
    .end local v5           #wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v4, :cond_1

    sget-object v7, Lcom/baidu/launcher/ui/animation/Choreographer;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_1
    return-object v4

    .line 161
    .restart local v1       #isLiveWallpaper:Z
    .restart local v5       #wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 163
    move-object v0, v5

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 164
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v7, v7, 0x5

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v8, v8, 0x5

    const/4 v9, 0x1

    invoke-static {v3, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    .line 168
    .end local v1           #isLiveWallpaper:Z
    .end local v5           #wallpaperDrawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public static hideAppListViewBg(Landroid/app/Activity;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 695
    invoke-static {p0}, Lcom/baidu/launcher/ui/animation/Choreographer;->removeBlurView(Landroid/app/Activity;)V

    .line 696
    return-void
.end method

.method public static isAniming()Z
    .locals 1

    .prologue
    .line 810
    sget-boolean v0, Lcom/baidu/launcher/ui/animation/Choreographer;->mIsAniming:Z

    return v0
.end method

.method private static mergeBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .parameter "context"
    .parameter "homeViewBM"
    .parameter "wallpaperBM"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, array:[Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 99
    const/4 v3, 0x2

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 100
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v0, v4

    .line 101
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v0, v5

    .line 111
    :goto_0
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 112
    .local v2, ld:Landroid/graphics/drawable/LayerDrawable;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p0, v2}, Lcom/baidu/launcher/ui/animation/Choreographer;->dw2BlurBm(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .local v1, blurBG:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v0, 0x0

    .line 114
    const/4 v2, 0x0

    .line 115
    .end local v1           #blurBG:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #ld:Landroid/graphics/drawable/LayerDrawable;
    :goto_1
    return-object v1

    .line 102
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 103
    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    .line 104
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v0, v4

    goto :goto_0

    .line 105
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 106
    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    .line 107
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v3, v0, v4

    goto :goto_0

    .line 109
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static playOpenFolderAnim(Lcom/baidu/launcher/ui/logic/ViewManager;Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/folder/FolderHolder;Lcom/baidu/launcher/ui/folder/FolderLayer;Lcom/baidu/launcher/ui/folder/Folder;[ILjava/lang/Runnable;Z)V
    .locals 37
    .parameter "viewManager"
    .parameter "launcher"
    .parameter "folderIcon"
    .parameter "folderLayer"
    .parameter "openedFolder"
    .parameter "pos"
    .parameter "run"
    .parameter "open"

    .prologue
    .line 393
    const v3, 0x7f08013a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Lcom/baidu/launcher/ui/homeview/HomeView;

    .line 394
    .local v28, homeView:Lcom/baidu/launcher/ui/homeview/HomeView;
    const v3, 0x7f080133

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 395
    .local v7, animView:Landroid/view/ViewGroup;
    const v3, 0x7f080132

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/folder/FolderLayer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 396
    .local v8, folderLayout:Landroid/view/View;
    sget v3, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v9, 0xf

    if-le v3, v9, :cond_0

    .line 397
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/animation/Choreographer;->getBlurView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    .line 400
    :cond_0
    if-eqz p7, :cond_9

    .line 402
    sget v3, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v9, 0xf

    if-le v3, v9, :cond_1

    .line 403
    new-instance v3, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    const/4 v9, 0x0

    invoke-direct {v3, v9}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;-><init>(Lcom/baidu/launcher/ui/animation/Choreographer$1;)V

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    const/4 v10, 0x1

    aput-object v28, v9, v10

    invoke-virtual {v3, v9}, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    sput-object v3, Lcom/baidu/launcher/ui/animation/Choreographer;->mAnimTask:Lcom/baidu/launcher/ui/animation/Choreographer$AnimationDataTask;

    .line 406
    :cond_1
    const/high16 v3, 0x3f80

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 407
    invoke-virtual {v7}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 409
    invoke-interface/range {p2 .. p2}, Lcom/baidu/launcher/ui/folder/FolderHolder;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/baidu/launcher/data/item/IFolderInfo;

    .line 410
    .local v26, folderInfo:Lcom/baidu/launcher/data/item/IFolderInfo;
    invoke-interface/range {v26 .. v26}, Lcom/baidu/launcher/data/item/IFolderInfo;->getAll()Ljava/util/ArrayList;

    move-result-object v20

    .line 411
    .local v20, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/BaseItemInfo;>;"
    const v3, 0x7f08021f

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 412
    .local v22, content:Landroid/view/ViewGroup;
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v36, v0

    .line 414
    .local v36, targetPos:[I
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v9, 0x8

    if-le v3, v9, :cond_4

    const/16 v32, 0x8

    .line 415
    .local v32, lastOne:I
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v3

    int-to-float v3, v3

    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    mul-float/2addr v3, v9

    float-to-int v0, v3

    move/from16 v31, v0

    .line 416
    .local v31, iconSzie:I
    const/4 v3, 0x1

    const/4 v9, 0x1

    aget v9, p5, v9

    div-int/lit8 v10, v31, 0x2

    sub-int/2addr v9, v10

    aput v9, p5, v3

    .line 418
    const/16 v30, 0x0

    .local v30, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_2

    .line 419
    move/from16 v0, v30

    move/from16 v1, v32

    if-le v0, v1, :cond_5

    .line 466
    :cond_2
    new-instance v29, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, v29

    invoke-direct {v0, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 467
    .local v29, homeViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v9, 0xc8

    move-object/from16 v0, v29

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 468
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 469
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 470
    invoke-virtual/range {v28 .. v29}, Lcom/baidu/launcher/ui/homeview/HomeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 471
    new-instance v3, Lcom/baidu/launcher/ui/animation/Choreographer$2;

    invoke-direct {v3, v8}, Lcom/baidu/launcher/ui/animation/Choreographer$2;-><init>(Landroid/view/View;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 564
    .end local v20           #apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/BaseItemInfo;>;"
    .end local v22           #content:Landroid/view/ViewGroup;
    .end local v26           #folderInfo:Lcom/baidu/launcher/data/item/IFolderInfo;
    .end local v29           #homeViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    .end local v30           #i:I
    .end local v31           #iconSzie:I
    .end local v32           #lastOne:I
    .end local v36           #targetPos:[I
    :cond_3
    :goto_2
    return-void

    .line 414
    .restart local v20       #apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/BaseItemInfo;>;"
    .restart local v22       #content:Landroid/view/ViewGroup;
    .restart local v26       #folderInfo:Lcom/baidu/launcher/data/item/IFolderInfo;
    .restart local v36       #targetPos:[I
    :cond_4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v32, v3, -0x1

    goto :goto_0

    .line 420
    .restart local v30       #i:I
    .restart local v31       #iconSzie:I
    .restart local v32       #lastOne:I
    :cond_5
    :try_start_1
    new-instance v5, Landroid/view/View;

    invoke-virtual/range {v28 .. v28}, Lcom/baidu/launcher/ui/homeview/HomeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 421
    .local v5, view:Landroid/view/View;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v31

    move/from16 v1, v31

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/data/item/BaseItemInfo;

    iget-object v3, v3, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    const/4 v3, 0x0

    aget v3, p5, v3

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setX(F)V

    .line 424
    const/4 v3, 0x1

    aget v3, p5, v3

    int-to-float v3, v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setY(F)V

    .line 425
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 426
    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v35

    .line 427
    .local v35, subView:Landroid/view/View;
    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->getLocationInWindow([I)V

    .line 428
    const/4 v3, 0x0

    const/4 v9, 0x0

    aget v9, v36, v9

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int v10, v10, v31

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aput v9, v36, v3

    .line 429
    const/4 v3, 0x1

    const/4 v9, 0x1

    aget v9, v36, v9

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v36, v3

    .line 430
    invoke-virtual {v5}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 431
    const/4 v3, 0x2

    const/4 v9, 0x0

    invoke-virtual {v5, v3, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 433
    :cond_6
    const-string v3, "translationX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v12, 0x0

    aget v12, p5, v12

    int-to-float v12, v12

    aput v12, v9, v10

    const/4 v10, 0x1

    const/4 v12, 0x0

    aget v12, v36, v12

    int-to-float v12, v12

    aput v12, v9, v10

    invoke-static {v5, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 434
    .local v18, animatorX:Landroid/animation/ObjectAnimator;
    const-string v3, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v12, 0x1

    aget v12, p5, v12

    int-to-float v12, v12

    aput v12, v9, v10

    const/4 v10, 0x1

    const/4 v12, 0x1

    aget v12, v36, v12

    int-to-float v12, v12

    aput v12, v9, v10

    invoke-static {v5, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 435
    .local v19, animatorY:Landroid/animation/ObjectAnimator;
    const-string v3, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-static {v5, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    .line 436
    .local v33, scaleX:Landroid/animation/ObjectAnimator;
    const-string v3, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_1

    invoke-static {v5, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    .line 437
    .local v34, scaleY:Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    .line 438
    .local v17, animatorSet:Landroid/animation/AnimatorSet;
    const-wide/16 v23, 0xc8

    .line 439
    .local v23, duration:J
    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    const/4 v6, 0x1

    .line 440
    .local v6, isLastOne:Z
    :goto_3
    if-nez v30, :cond_8

    const/4 v4, 0x1

    .line 441
    .local v4, isFirst:Z
    :goto_4
    new-instance v3, Lcom/baidu/launcher/ui/animation/Choreographer$1;

    invoke-direct/range {v3 .. v8}, Lcom/baidu/launcher/ui/animation/Choreographer$1;-><init>(ZLandroid/view/View;ZLandroid/view/ViewGroup;Landroid/view/View;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 455
    move-object/from16 v0, v17

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 456
    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 457
    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 418
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    .line 439
    .end local v4           #isFirst:Z
    .end local v6           #isLastOne:Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 440
    .restart local v6       #isLastOne:Z
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 459
    .end local v5           #view:Landroid/view/View;
    .end local v6           #isLastOne:Z
    .end local v17           #animatorSet:Landroid/animation/AnimatorSet;
    .end local v18           #animatorX:Landroid/animation/ObjectAnimator;
    .end local v19           #animatorY:Landroid/animation/ObjectAnimator;
    .end local v23           #duration:J
    .end local v33           #scaleX:Landroid/animation/ObjectAnimator;
    .end local v34           #scaleY:Landroid/animation/ObjectAnimator;
    .end local v35           #subView:Landroid/view/View;
    :catch_0
    move-exception v25

    .line 461
    .local v25, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/launcher/ui/animation/Choreographer;->mIsAniming:Z

    .line 462
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/animation/Choreographer;->removeBlurView(Landroid/app/Activity;)V

    .line 463
    const/4 v3, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeFolder(ZZ)V

    goto/16 :goto_2

    .line 485
    .end local v20           #apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/data/item/BaseItemInfo;>;"
    .end local v22           #content:Landroid/view/ViewGroup;
    .end local v25           #e:Ljava/lang/Exception;
    .end local v26           #folderInfo:Lcom/baidu/launcher/data/item/IFolderInfo;
    .end local v30           #i:I
    .end local v31           #iconSzie:I
    .end local v32           #lastOne:I
    .end local v36           #targetPos:[I
    :cond_9
    new-instance v29, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v9, 0x3f80

    move-object/from16 v0, v29

    invoke-direct {v0, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 486
    .restart local v29       #homeViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v9, 0xc8

    move-object/from16 v0, v29

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 487
    invoke-virtual/range {v28 .. v29}, Lcom/baidu/launcher/ui/homeview/HomeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 489
    sget v3, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v9, 0xf

    if-le v3, v9, :cond_b

    .line 490
    sget-object v3, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    if-eqz v3, :cond_d

    .line 491
    sget-object v3, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 492
    sget-object v3, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 494
    :cond_a
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/baidu/launcher/ui/animation/Choreographer$3;

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-direct {v9, v0, v1}, Lcom/baidu/launcher/ui/animation/Choreographer$3;-><init>(Lcom/baidu/launcher/app/Launcher;Ljava/lang/Runnable;)V

    const-wide/16 v14, 0xc8

    invoke-virtual {v3, v9, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 503
    .local v21, blurViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v9, 0xc8

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 504
    sget-object v3, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 512
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    .end local v21           #blurViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    const/high16 v3, 0x3f80

    const/4 v9, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 513
    .restart local v21       #blurViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v9, 0xc8

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 514
    sget-object v3, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 517
    .end local v21           #blurViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    :cond_b
    const/high16 v3, 0x3f80

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 518
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Landroid/view/View;->setAlpha(F)V

    .line 520
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v3

    int-to-float v3, v3

    sget v9, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    mul-float/2addr v3, v9

    float-to-int v0, v3

    move/from16 v31, v0

    .line 521
    .restart local v31       #iconSzie:I
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_5
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_3

    .line 522
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_f

    const/4 v13, 0x1

    .line 523
    .local v13, isLast:Z
    :goto_6
    if-nez v30, :cond_10

    const/4 v4, 0x1

    .line 524
    .restart local v4       #isFirst:Z
    :goto_7
    move/from16 v0, v30

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 525
    .local v11, childView:Landroid/view/View;
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v27, v0

    .line 526
    .local v27, fromPos:[I
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 527
    invoke-virtual {v11}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 528
    const/4 v3, 0x2

    const/4 v9, 0x0

    invoke-virtual {v11, v3, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 530
    :cond_c
    const/4 v3, 0x0

    const/4 v9, 0x0

    aget v9, v27, v9

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int v10, v10, v31

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    aput v9, v27, v3

    .line 531
    const/4 v3, 0x1

    const/4 v9, 0x1

    aget v9, v27, v9

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/baidu/launcher/ui/logic/ViewManager;->getStatusBarHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v11}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v27, v3

    .line 532
    const-string v3, "translationX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v12, 0x0

    aget v12, v27, v12

    int-to-float v12, v12

    aput v12, v9, v10

    const/4 v10, 0x1

    const/4 v12, 0x0

    aget v12, p5, v12

    int-to-float v12, v12

    aput v12, v9, v10

    invoke-static {v11, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 533
    .restart local v18       #animatorX:Landroid/animation/ObjectAnimator;
    const-string v3, "translationY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v12, 0x1

    aget v12, v27, v12

    int-to-float v12, v12

    aput v12, v9, v10

    const/4 v10, 0x1

    const/4 v12, 0x1

    aget v12, p5, v12

    int-to-float v12, v12

    aput v12, v9, v10

    invoke-static {v11, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    .line 534
    .restart local v19       #animatorY:Landroid/animation/ObjectAnimator;
    const-string v3, "scaleX"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-static {v11, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v33

    .line 535
    .restart local v33       #scaleX:Landroid/animation/ObjectAnimator;
    const-string v3, "scaleY"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_3

    invoke-static {v11, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v34

    .line 536
    .restart local v34       #scaleY:Landroid/animation/ObjectAnimator;
    const-string v3, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_4

    invoke-static {v11, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 537
    .local v16, alpha:Landroid/animation/ObjectAnimator;
    new-instance v17, Landroid/animation/AnimatorSet;

    invoke-direct/range {v17 .. v17}, Landroid/animation/AnimatorSet;-><init>()V

    .line 538
    .restart local v17       #animatorSet:Landroid/animation/AnimatorSet;
    const-wide/16 v23, 0xc8

    .line 539
    .restart local v23       #duration:J
    move-object/from16 v0, v17

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 540
    new-instance v9, Lcom/baidu/launcher/ui/animation/Choreographer$4;

    move v10, v4

    move-object v12, v7

    move-object/from16 v14, p1

    move-object/from16 v15, p6

    invoke-direct/range {v9 .. v15}, Lcom/baidu/launcher/ui/animation/Choreographer$4;-><init>(ZLandroid/view/View;Landroid/view/ViewGroup;ZLcom/baidu/launcher/app/Launcher;Ljava/lang/Runnable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 560
    invoke-virtual/range {v17 .. v18}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 561
    invoke-virtual/range {v17 .. v17}, Landroid/animation/AnimatorSet;->start()V

    .line 521
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_5

    .line 508
    .end local v4           #isFirst:Z
    .end local v11           #childView:Landroid/view/View;
    .end local v13           #isLast:Z
    .end local v16           #alpha:Landroid/animation/ObjectAnimator;
    .end local v17           #animatorSet:Landroid/animation/AnimatorSet;
    .end local v18           #animatorX:Landroid/animation/ObjectAnimator;
    .end local v19           #animatorY:Landroid/animation/ObjectAnimator;
    .end local v23           #duration:J
    .end local v27           #fromPos:[I
    .end local v30           #i:I
    .end local v31           #iconSzie:I
    .end local v33           #scaleX:Landroid/animation/ObjectAnimator;
    .end local v34           #scaleY:Landroid/animation/ObjectAnimator;
    :cond_d
    if-eqz p6, :cond_e

    invoke-interface/range {p6 .. p6}, Ljava/lang/Runnable;->run()V

    .line 509
    :cond_e
    const/4 v3, 0x0

    sput-boolean v3, Lcom/baidu/launcher/ui/animation/Choreographer;->mIsAniming:Z

    goto/16 :goto_2

    .line 522
    .restart local v30       #i:I
    .restart local v31       #iconSzie:I
    :cond_f
    const/4 v13, 0x0

    goto/16 :goto_6

    .line 523
    .restart local v13       #isLast:Z
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 435
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 436
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 534
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3et
    .end array-data

    .line 535
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3et
    .end array-data

    .line 536
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static declared-synchronized removeBlurView(Landroid/app/Activity;)V
    .locals 7
    .parameter "launcher"

    .prologue
    .line 709
    const-class v5, Lcom/baidu/launcher/ui/animation/Choreographer;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 710
    .local v1, decorView:Landroid/widget/FrameLayout;
    sget-object v4, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 711
    sget-object v4, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 712
    .local v0, btm:Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 713
    sget-object v4, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 714
    sget-object v4, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 715
    const/4 v4, 0x0

    sput-object v4, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    .line 716
    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_0

    .line 717
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #btm:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 720
    :cond_0
    sget-object v4, Lcom/baidu/launcher/ui/animation/Choreographer;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 721
    .local v3, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 709
    .end local v1           #decorView:Landroid/widget/FrameLayout;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 723
    .restart local v1       #decorView:Landroid/widget/FrameLayout;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    sget-object v4, Lcom/baidu/launcher/ui/animation/Choreographer;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 724
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    monitor-exit v5

    return-void
.end method

.method public static showAppListViewBg(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)V
    .locals 6
    .parameter "launcher"
    .parameter "drawable"
    .parameter "color"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 678
    invoke-static {p0}, Lcom/baidu/launcher/ui/animation/Choreographer;->getBlurView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v3

    sput-object v3, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    .line 680
    if-eqz p1, :cond_0

    .line 681
    const/4 v3, 0x2

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 682
    .local v0, array:[Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 683
    .local v1, bd:Landroid/graphics/drawable/ColorDrawable;
    aput-object v1, v0, v4

    .line 684
    aput-object p1, v0, v5

    .line 690
    :goto_0
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 691
    .local v2, ld:Landroid/graphics/drawable/LayerDrawable;
    sget-object v3, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    return-void

    .line 686
    .end local v0           #array:[Landroid/graphics/drawable/Drawable;
    .end local v1           #bd:Landroid/graphics/drawable/ColorDrawable;
    .end local v2           #ld:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    .line 687
    .restart local v0       #array:[Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 688
    .restart local v1       #bd:Landroid/graphics/drawable/ColorDrawable;
    aput-object v1, v0, v4

    goto :goto_0
.end method

.method private static showFolderBlurBg(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "background"

    .prologue
    .line 729
    sget-object v1, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 731
    :try_start_0
    sget-object v1, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    sget-object v1, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 734
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 735
    .local v0, blurViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 736
    sget-object v1, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    new-instance v1, Lcom/baidu/launcher/ui/animation/Choreographer$9;

    invoke-direct {v1}, Lcom/baidu/launcher/ui/animation/Choreographer$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 744
    sget-object v1, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 745
    sget-object v1, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    .end local v0           #blurViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    :cond_1
    :goto_0
    return-void

    .line 746
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static startAniming()V
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/launcher/ui/animation/Choreographer;->mIsAniming:Z

    .line 815
    return-void
.end method

.method public static startWeatherAnim(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V
    .locals 13
    .parameter "mLauncher"
    .parameter "setLocationLayer"

    .prologue
    .line 568
    invoke-virtual {p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->isHardwareAccelerated()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 569
    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 571
    :cond_0
    const v9, 0x7f08013a

    invoke-virtual {p0, v9}, Lcom/baidu/launcher/app/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/homeview/HomeView;

    .line 572
    .local v6, mHomeView:Lcom/baidu/launcher/ui/homeview/HomeView;
    const/4 v3, 0x0

    .line 573
    .local v3, background:Landroid/graphics/drawable/BitmapDrawable;
    sget v9, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v10, 0xf

    if-le v9, v10, :cond_1

    .line 574
    invoke-static {p0, v6}, Lcom/baidu/launcher/ui/animation/Choreographer;->blurBackground(Landroid/content/Context;Lcom/baidu/launcher/ui/homeview/HomeView;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    .line 575
    invoke-static {p0}, Lcom/baidu/launcher/ui/animation/Choreographer;->getBlurView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v9

    sput-object v9, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    .line 577
    :cond_1
    const/4 v9, 0x1

    invoke-static {p0, v9}, Lcom/baidu/launcher/ui/animation/Choreographer;->getHomeViewZoomAnim(Landroid/content/Context;Z)Landroid/view/animation/Animation;

    move-result-object v2

    .line 578
    .local v2, animation:Landroid/view/animation/Animation;
    invoke-virtual {v6, v2}, Lcom/baidu/launcher/ui/homeview/HomeView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 579
    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 581
    .local v1, alphaIn:Landroid/animation/PropertyValuesHolder;
    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 583
    .local v7, scaleXIn:Landroid/animation/PropertyValuesHolder;
    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 585
    .local v8, scaleYIn:Landroid/animation/PropertyValuesHolder;
    const-string v9, "Y"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    invoke-static {p0}, Lcom/baidu/bulletin/ui/Utilities;->getHeightPixels(Landroid/content/Context;)I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    int-to-float v12, v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 587
    .local v0, YIn:Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    const/4 v10, 0x2

    aput-object v8, v9, v10

    const/4 v10, 0x3

    aput-object v0, v9, v10

    invoke-static {p1, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 589
    .local v5, inAnimation:Landroid/animation/ObjectAnimator;
    new-instance v9, Lcom/baidu/launcher/ui/animation/Choreographer$5;

    invoke-direct {v9, p1}, Lcom/baidu/launcher/ui/animation/Choreographer$5;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 594
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x3f80

    invoke-direct {v9, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 595
    const-wide/16 v9, 0x12c

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 596
    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 599
    sget v9, Lcom/baidu/launcher/app/LauncherApplication;->SDK_VERSION:I

    const/16 v10, 0xf

    if-le v9, v10, :cond_3

    .line 600
    sget-object v9, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 601
    sget-object v9, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 603
    :cond_2
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    invoke-direct {v4, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 604
    .local v4, blurViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v9, 0x12c

    invoke-virtual {v4, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 605
    sget-object v9, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v9, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    new-instance v9, Lcom/baidu/launcher/ui/animation/Choreographer$6;

    invoke-direct {v9}, Lcom/baidu/launcher/ui/animation/Choreographer$6;-><init>()V

    invoke-virtual {v4, v9}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 613
    sget-object v9, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    invoke-virtual {v9, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 614
    sget-object v9, Lcom/baidu/launcher/ui/animation/Choreographer;->blurView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 616
    .end local v4           #blurViewAlphaAnim:Landroid/view/animation/AlphaAnimation;
    :cond_3
    return-void

    .line 579
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 581
    :array_1
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 583
    :array_2
    .array-data 0x4
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static stopAniming()V
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/animation/Choreographer;->mIsAniming:Z

    .line 819
    return-void
.end method
