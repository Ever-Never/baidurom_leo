.class public Lcom/android/systemui/recent/MyScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "MyScrollView.java"


# static fields
.field private static final BOUNCE_ANIMATION_DURATION:I = 0x2bc

.field private static final BOUNCE_OVERSHOOT_TENSION:F = 1.4f

.field private static final MIN_FLING_VELOCITY:I = 0x96


# instance fields
.field private count:I

.field private inner:Landroid/view/View;

.field private mConfiguration:Landroid/view/ViewConfiguration;

.field private mLastMotionX:F

.field private mLastScrollX:I

.field private mScreenWidth:I

.field private mTouchSlop:I

.field private normal:Landroid/graphics/Rect;

.field private x:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/MyScrollView;->normal:Landroid/graphics/Rect;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/MyScrollView;->count:I

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/recent/MyScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    .line 42
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/MyScrollView;->mConfiguration:Landroid/view/ViewConfiguration;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/recent/MyScrollView;->mConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/MyScrollView;->mTouchSlop:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/MyScrollView;->normal:Landroid/graphics/Rect;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/MyScrollView;->count:I

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/recent/MyScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    .line 49
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/MyScrollView;->mConfiguration:Landroid/view/ViewConfiguration;

    .line 50
    iget-object v0, p0, Lcom/android/systemui/recent/MyScrollView;->mConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/MyScrollView;->mTouchSlop:I

    .line 51
    return-void
.end method


# virtual methods
.method public animation()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 159
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 164
    .local v0, bounceAnimation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 165
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 167
    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 168
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const v2, 0x3fb33333

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    iget-object v1, p0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recent/MyScrollView;->normal:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/recent/MyScrollView;->normal:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recent/MyScrollView;->normal:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recent/MyScrollView;->normal:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 171
    iget-object v1, p0, Lcom/android/systemui/recent/MyScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 172
    return-void
.end method

.method public commOnTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .parameter "ev"

    .prologue
    .line 88
    const/4 v7, 0x0

    .line 89
    .local v7, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 90
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    .line 155
    :goto_0
    return v7

    .line 92
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/recent/MyScrollView;->x:F

    .line 93
    const/4 v7, 0x1

    .line 94
    goto :goto_0

    .line 96
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recent/MyScrollView;->mLastMotionX:F

    sub-float v11, v12, v13

    .line 97
    .local v11, xVelocity:F
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/recent/MyScrollView;->count:I

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/MyScrollView;->isNeedAnimation()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/MyScrollView;->animation()V

    .line 102
    :cond_0
    const v12, 0x7f09009e

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/systemui/recent/MyScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    sub-int v3, v12, v13

    .line 103
    .local v3, fullScrollX:I
    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/recent/MyScrollView;->mLastScrollX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    if-le v12, v13, :cond_2

    .line 105
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/recent/MyScrollView;->mLastScrollX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    sub-int v4, v12, v13

    .line 117
    .local v4, leftPos:I
    :goto_1
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x4316

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5

    .line 118
    move v8, v4

    .line 122
    .local v8, scrollToX:I
    :goto_2
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/recent/MyScrollView;->smoothScrollTo(II)V

    .line 123
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recent/MyScrollView;->mTouchSlop:I

    .line 124
    .local v9, touchSlop:I
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v12

    int-to-float v13, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_6

    const/4 v10, 0x1

    .line 125
    .local v10, xNotMoved:Z
    :goto_3
    if-eqz v10, :cond_1

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/MyScrollView;->performClick()Z

    .line 128
    :cond_1
    const/4 v7, 0x0

    .line 129
    goto :goto_0

    .line 107
    .end local v4           #leftPos:I
    .end local v8           #scrollToX:I
    .end local v9           #touchSlop:I
    .end local v10           #xNotMoved:Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #leftPos:I
    goto :goto_1

    .line 110
    .end local v4           #leftPos:I
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/recent/MyScrollView;->mLastScrollX:I

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    rem-int v12, v3, v12

    if-eqz v12, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    rem-int v4, v3, v12

    .restart local v4       #leftPos:I
    goto :goto_1

    .line 113
    .end local v4           #leftPos:I
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/recent/MyScrollView;->mLastScrollX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    add-int v4, v12, v13

    .restart local v4       #leftPos:I
    goto :goto_1

    .line 120
    :cond_5
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/recent/MyScrollView;->mLastScrollX:I

    .restart local v8       #scrollToX:I
    goto :goto_2

    .line 124
    .restart local v9       #touchSlop:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    .line 132
    .end local v3           #fullScrollX:I
    .end local v4           #leftPos:I
    .end local v8           #scrollToX:I
    .end local v9           #touchSlop:I
    .end local v11           #xVelocity:F
    :pswitch_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/recent/MyScrollView;->count:I

    if-nez v12, :cond_9

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 137
    .local v6, preX:F
    :goto_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/recent/MyScrollView;->count:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/recent/MyScrollView;->count:I

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 139
    .local v5, nowX:F
    sub-float v12, v6, v5

    float-to-int v2, v12

    .line 140
    .local v2, deltaX:I
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/recent/MyScrollView;->scrollBy(II)V

    .line 141
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/recent/MyScrollView;->x:F

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/MyScrollView;->isNeedMove()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 143
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recent/MyScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 144
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recent/MyScrollView;->normal:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    .line 147
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    div-int/lit8 v14, v2, 0x2

    sub-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    div-int/lit8 v16, v2, 0x2

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v16

    invoke-virtual/range {v12 .. v16}, Landroid/view/View;->layout(IIII)V

    .line 150
    :cond_8
    const/4 v7, 0x1

    .line 151
    goto/16 :goto_0

    .line 135
    .end local v2           #deltaX:I
    .end local v5           #nowX:F
    .end local v6           #preX:F
    :cond_9
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/recent/MyScrollView;->x:F

    .restart local v6       #preX:F
    goto/16 :goto_4

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isNeedAnimation()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/recent/MyScrollView;->normal:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedMove()Z
    .locals 4

    .prologue
    .line 179
    iget-object v2, p0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recent/MyScrollView;->getWidth()I

    move-result v3

    sub-int v0, v2, v3

    .line 180
    .local v0, offset:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/MyScrollView;->getScrollX()I

    move-result v1

    .line 181
    .local v1, scrollX:I
    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    .line 182
    :cond_0
    const/4 v2, 0x1

    .line 184
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/recent/MyScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/MyScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    .line 37
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 80
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/MyScrollView;->mLastMotionX:F

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/recent/MyScrollView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/MyScrollView;->mLastScrollX:I

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/recent/MyScrollView;->getWidth()I

    move-result v0

    .line 57
    .local v0, width:I
    iget v1, p0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    rem-int v1, v0, v1

    if-eqz v1, :cond_0

    .line 58
    iget v1, p0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    div-int v1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/systemui/recent/MyScrollView;->mScreenWidth:I

    mul-int v0, v1, v2

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/MyScrollView;->setMinimumWidth(I)V

    .line 61
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/recent/MyScrollView;->inner:Landroid/view/View;

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/MyScrollView;->commOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 189
    const/4 v0, 0x2

    invoke-super {p0, v0}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 190
    return-void
.end method
