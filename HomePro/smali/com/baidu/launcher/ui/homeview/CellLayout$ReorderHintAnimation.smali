.class Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderHintAnimation"
.end annotation


# static fields
.field private static final DURATION:I = 0x12c


# instance fields
.field a:Ljava/lang/Object;

.field child:Landroid/view/View;

.field finalDeltaX:F

.field finalDeltaY:F

.field finalScale:F

.field initDeltaX:F

.field initDeltaY:F

.field initScale:F

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout;Landroid/view/View;IIIIII)V
    .locals 17
    .parameter
    .parameter "child"
    .parameter "cellX0"
    .parameter "cellY0"
    .parameter "cellX1"
    .parameter "cellY1"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 3004
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3005
    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$500(Lcom/baidu/launcher/ui/homeview/CellLayout;)[I

    move-result-object v7

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 3006
    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$500(Lcom/baidu/launcher/ui/homeview/CellLayout;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v13, v2, v3

    .line 3007
    .local v13, x0:I
    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$500(Lcom/baidu/launcher/ui/homeview/CellLayout;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v15, v2, v3

    .line 3008
    .local v15, y0:I
    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$500(Lcom/baidu/launcher/ui/homeview/CellLayout;)[I

    move-result-object v7

    move-object/from16 v2, p1

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v2 .. v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 3009
    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$500(Lcom/baidu/launcher/ui/homeview/CellLayout;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v14, v2, v3

    .line 3010
    .local v14, x1:I
    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mTmpPoint:[I
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$500(Lcom/baidu/launcher/ui/homeview/CellLayout;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v16, v2, v3

    .line 3011
    .local v16, y1:I
    sub-int v10, v14, v13

    .line 3012
    .local v10, dX:I
    sub-int v11, v16, v15

    .line 3013
    .local v11, dY:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    .line 3014
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    .line 3015
    if-ne v10, v11, :cond_1

    if-nez v10, :cond_1

    .line 3029
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v12

    .line 3030
    .local v12, isICE:Z
    if-eqz v12, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    :goto_1
    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initDeltaX:F

    .line 3031
    if-eqz v12, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    :goto_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initDeltaY:F

    .line 3032
    const/high16 v2, 0x3f80

    const/high16 v3, 0x4080

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalScale:F

    .line 3033
    if-eqz v12, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v2

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initScale:F

    .line 3034
    if-eqz v12, :cond_0

    .line 3035
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 3036
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 3038
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    .line 3039
    return-void

    .line 3017
    .end local v12           #isICE:Z
    :cond_1
    if-nez v11, :cond_2

    .line 3018
    int-to-float v2, v10

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderHintAnimationMagnitude:F
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$600(Lcom/baidu/launcher/ui/homeview/CellLayout;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    goto :goto_0

    .line 3019
    :cond_2
    if-nez v10, :cond_3

    .line 3020
    int-to-float v2, v11

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderHintAnimationMagnitude:F
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$600(Lcom/baidu/launcher/ui/homeview/CellLayout;)F

    move-result v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    goto :goto_0

    .line 3022
    :cond_3
    int-to-float v2, v11

    int-to-float v3, v10

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    .line 3023
    .local v8, angle:D
    int-to-float v2, v10

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderHintAnimationMagnitude:F
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$600(Lcom/baidu/launcher/ui/homeview/CellLayout;)F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    .line 3025
    int-to-float v2, v11

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mReorderHintAnimationMagnitude:F
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$600(Lcom/baidu/launcher/ui/homeview/CellLayout;)F

    move-result v6

    float-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    goto/16 :goto_0

    .line 3030
    .end local v8           #angle:D
    .restart local v12       #isICE:Z
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 3031
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 3033
    :cond_6
    const/high16 v2, 0x3f80

    goto/16 :goto_3
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2992
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->completeAnimationImmediately()V

    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 3106
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/baidu/launcher/ui/animation/Animator;

    if-eqz v0, :cond_1

    .line 3107
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->a:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/launcher/ui/animation/Animator;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/animation/Animator;->cancel()V

    .line 3112
    :cond_0
    :goto_0
    return-void

    .line 3108
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 3110
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    goto :goto_0
.end method

.method private completeAnimationImmediately()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 3115
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->cancel()V

    .line 3116
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3117
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3118
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3119
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 3120
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 3133
    :cond_0
    return-void
.end method


# virtual methods
.method animate()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x12c

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v5, 0x0

    .line 3042
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mShakeAnimators:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$700(Lcom/baidu/launcher/ui/homeview/CellLayout;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3043
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mShakeAnimators:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$700(Lcom/baidu/launcher/ui/homeview/CellLayout;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    .line 3044
    .local v0, oldAnimation:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;
    invoke-direct {v0}, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->cancel()V

    .line 3045
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mShakeAnimators:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$700(Lcom/baidu/launcher/ui/homeview/CellLayout;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3046
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    .line 3047
    invoke-direct {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->completeAnimationImmediately()V

    .line 3103
    .end local v0           #oldAnimation:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;
    :cond_0
    :goto_0
    return-void

    .line 3051
    :cond_1
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_0

    .line 3054
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3055
    new-array v3, v7, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->ofFloat([F)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    move-result-object v2

    .line 3056
    .local v2, va:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    iput-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->a:Ljava/lang/Object;

    .line 3057
    invoke-virtual {v2, v7}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setRepeatMode(I)V

    .line 3058
    invoke-virtual {v2, v8}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setRepeatCount(I)V

    .line 3059
    invoke-virtual {v2, v9, v10}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setDuration(J)Lcom/baidu/launcher/ui/animation/ValueAnimator;

    .line 3060
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x404e

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->setStartDelay(J)V

    .line 3061
    new-instance v3, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$1;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;)V

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addUpdateListener(Lcom/baidu/launcher/ui/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3074
    new-instance v3, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$2;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$2;-><init>(Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;)V

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->addListener(Lcom/baidu/launcher/ui/animation/Animator$AnimatorListener;)V

    .line 3083
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mShakeAnimators:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$700(Lcom/baidu/launcher/ui/homeview/CellLayout;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    invoke-virtual {v2}, Lcom/baidu/launcher/ui/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3087
    .end local v2           #va:Lcom/baidu/launcher/ui/animation/ValueAnimator;
    :cond_3
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initDeltaX:F

    iget v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaX:F

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initDeltaY:F

    iget v6, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->finalDeltaY:F

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 3089
    .local v1, ta:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v1, v7}, Landroid/view/animation/TranslateAnimation;->setRepeatMode(I)V

    .line 3090
    invoke-virtual {v1, v8}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 3097
    invoke-virtual {v1, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 3098
    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->a:Ljava/lang/Object;

    .line 3099
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->this$0:Lcom/baidu/launcher/ui/homeview/CellLayout;

    #getter for: Lcom/baidu/launcher/ui/homeview/CellLayout;->mShakeAnimators:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$700(Lcom/baidu/launcher/ui/homeview/CellLayout;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3100
    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->child:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 3055
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
