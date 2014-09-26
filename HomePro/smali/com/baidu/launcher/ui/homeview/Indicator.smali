.class public Lcom/baidu/launcher/ui/homeview/Indicator;
.super Landroid/view/ViewGroup;
.source "Indicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/homeview/Indicator$ICallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Indicator"


# instance fields
.field private callback:Lcom/baidu/launcher/ui/homeview/Indicator$ICallback;

.field private deltaX:F

.field private isBulletinMode:Z

.field private isBulletinVisible:Z

.field private mBefore:I

.field private mCurrent:I

.field private mGap:I

.field private mHeight:I

.field private mIsFlip:Z

.field private mLastpos:F

.field private mUseFlip:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/homeview/Indicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/homeview/Indicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mCurrent:I

    .line 44
    iput v2, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mBefore:I

    .line 45
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mLastpos:F

    .line 46
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mUseFlip:Z

    .line 47
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mIsFlip:Z

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->callback:Lcom/baidu/launcher/ui/homeview/Indicator$ICallback;

    .line 269
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->isBulletinVisible:Z

    .line 270
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->isBulletinMode:Z

    .line 62
    sget-object v1, Lcom/baidu/home2/R$styleable;->Indicator:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mWidth:I

    .line 65
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mHeight:I

    .line 66
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mGap:I

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Indicator;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 70
    return-void
.end method

.method private setCurrentShow(I)V
    .locals 4
    .parameter "screen"

    .prologue
    .line 115
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 129
    :cond_0
    return-void

    .line 118
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 120
    .local v1, v:Landroid/widget/ImageView;
    if-ne v0, p1, :cond_3

    .line 121
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 122
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mBefore:I

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mCurrent:I

    if-eq v2, v3, :cond_2

    .line 123
    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->showIndicatorAnim(Landroid/view/View;)V

    .line 118
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1
.end method

.method private showIndicatorAnim(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    const v1, 0x3f4ccccd

    const/high16 v6, 0x3f00

    .line 285
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 286
    .local v0, alphaAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 287
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 289
    return-void
.end method


# virtual methods
.method public addScreen()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, view:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->isBulletinMode:Z

    if-eqz v1, :cond_0

    .line 77
    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Indicator;->addView(Landroid/view/View;)V

    .line 84
    return-void

    .line 79
    :cond_0
    const v1, 0x7f02016a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public addScreen(I)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 87
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, view:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 90
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Indicator;->addView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method public delScreen()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v0

    .line 96
    .local v0, count:I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->removeViewAt(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public enableBulletinMode(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->isBulletinMode:Z

    .line 280
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const v1, 0x7f02007e

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    :cond_0
    return-void

    .line 281
    :cond_1
    const v1, 0x7f02016a

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    .line 230
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v8

    iget-boolean v7, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->isBulletinVisible:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->isBulletinMode:Z

    if-eqz v7, :cond_1

    move v7, v6

    :goto_0
    sub-int v1, v8, v7

    .line 232
    .local v1, count:I
    if-gtz v1, :cond_2

    .line 233
    const-string v7, "Indicator"

    const-string v8, "on child found"

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    return-void

    .line 230
    .end local v1           #count:I
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 237
    .restart local v1       #count:I
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mWidth:I

    mul-int/2addr v8, v1

    sub-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mGap:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 238
    .local v3, tmpX:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mHeight:I

    sub-int/2addr v7, v8

    div-int/lit8 v4, v7, 0x2

    .line 240
    .local v4, tmpY:I
    if-lez v3, :cond_5

    move v5, v3

    .line 241
    .local v5, x:I
    :goto_1
    if-lez v4, :cond_3

    move v6, v4

    .line 242
    .local v6, y:I
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v1

    .line 243
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 244
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 245
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    .line 247
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mWidth:I

    add-int/2addr v7, v5

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mHeight:I

    add-int/2addr v8, v6

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 248
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mWidth:I

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mGap:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 243
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_5
    move v5, v6

    .line 240
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 207
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 208
    .local v6, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 210
    .local v7, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 211
    .local v3, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 213
    .local v4, heightSpecSize:I
    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    .line 214
    :cond_0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "AppDock cannot have UNSPECIFIED dimensions"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 217
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 218
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 219
    .local v0, child:Landroid/view/View;
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mWidth:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 220
    .local v1, childWidthMeasureSpec:I
    iget v8, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mHeight:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 222
    .local v2, childheightMeasureSpec:I
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 217
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 225
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidthMeasureSpec:I
    .end local v2           #childheightMeasureSpec:I
    :cond_2
    invoke-virtual {p0, v7, v4}, Lcom/baidu/launcher/ui/homeview/Indicator;->setMeasuredDimension(II)V

    .line 226
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBulletinVisible(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    const/4 v1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->isBulletinVisible:Z

    .line 273
    if-nez p1, :cond_0

    .line 274
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallback(Lcom/baidu/launcher/ui/homeview/Indicator$ICallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->callback:Lcom/baidu/launcher/ui/homeview/Indicator$ICallback;

    .line 267
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 1
    .parameter "screenNum"

    .prologue
    .line 103
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/Indicator;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->isBulletinVisible:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->isBulletinMode:Z

    if-eqz v0, :cond_2

    .line 107
    add-int/lit8 p1, p1, 0x1

    .line 108
    :cond_2
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mCurrent:I

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mBefore:I

    .line 109
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mCurrent:I

    .line 111
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/Indicator;->setCurrentShow(I)V

    goto :goto_0
.end method

.method public setSlip(Z)V
    .locals 0
    .parameter "needSlip"

    .prologue
    .line 254
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/homeview/Indicator;->mUseFlip:Z

    .line 255
    return-void
.end method
