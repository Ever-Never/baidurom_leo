.class public Lcom/baidu/launcher/ui/editview/EditViewIndicator;
.super Landroid/view/ViewGroup;
.source "EditViewIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/editview/EditViewIndicator$ICallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditViewIndicator"


# instance fields
.field private callback:Lcom/baidu/launcher/ui/editview/EditViewIndicator$ICallback;

.field private deltaX:F

.field private isAddScreen:Z

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
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v2, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mCurrent:I

    .line 41
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mLastpos:F

    .line 42
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mUseFlip:Z

    .line 43
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mIsFlip:Z

    .line 46
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->callback:Lcom/baidu/launcher/ui/editview/EditViewIndicator$ICallback;

    .line 237
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->isAddScreen:Z

    .line 58
    sget-object v1, Lcom/baidu/home2/R$styleable;->Indicator:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mWidth:I

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mHeight:I

    .line 65
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mGap:I

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 68
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 69
    return-void
.end method

.method private setCurrentShow(I)V
    .locals 4
    .parameter "screen"

    .prologue
    .line 108
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildCount()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 121
    :cond_0
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 112
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 113
    .local v1, v:Landroid/widget/ImageView;
    add-int/lit8 v2, p1, -0x1

    if-ne v0, v2, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public addScreen()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, view:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 75
    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->addView(Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public addScreen(I)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 83
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, view:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 86
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->addView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method public delScreen()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildCount()I

    move-result v0

    .line 92
    .local v0, count:I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->removeViewAt(I)V

    .line 95
    :cond_0
    return-void
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

    .line 198
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildCount()I

    move-result v8

    iget-boolean v7, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->isAddScreen:Z

    if-eqz v7, :cond_1

    move v7, v6

    :goto_0
    sub-int v1, v8, v7

    .line 200
    .local v1, count:I
    if-gtz v1, :cond_2

    .line 201
    const-string v7, "EditViewIndicator"

    const-string v8, "on child found"

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    return-void

    .line 198
    .end local v1           #count:I
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 205
    .restart local v1       #count:I
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mWidth:I

    mul-int/2addr v8, v1

    sub-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    iget v9, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mGap:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 206
    .local v3, tmpX:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mHeight:I

    sub-int/2addr v7, v8

    div-int/lit8 v4, v7, 0x2

    .line 208
    .local v4, tmpY:I
    if-lez v3, :cond_5

    move v5, v3

    .line 209
    .local v5, x:I
    :goto_1
    if-lez v4, :cond_3

    move v6, v4

    .line 210
    .local v6, y:I
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildCount()I

    move-result v1

    .line 211
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 212
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    .line 215
    iget v7, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mWidth:I

    add-int/2addr v7, v5

    iget v8, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mHeight:I

    add-int/2addr v8, v6

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 216
    iget v7, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mWidth:I

    iget v8, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mGap:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 211
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_5
    move v5, v6

    .line 208
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 172
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 173
    .local v6, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 175
    .local v7, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 176
    .local v3, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 178
    .local v4, heightSpecSize:I
    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    .line 180
    :cond_0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "AppDock cannot have UNSPECIFIED dimensions"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 184
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 185
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, child:Landroid/view/View;
    iget v8, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mWidth:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 188
    .local v1, childWidthMeasureSpec:I
    iget v8, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mHeight:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 190
    .local v2, childheightMeasureSpec:I
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 184
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 193
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidthMeasureSpec:I
    .end local v2           #childheightMeasureSpec:I
    :cond_2
    invoke-virtual {p0, v7, v4}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->setMeasuredDimension(II)V

    .line 194
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/baidu/launcher/ui/editview/EditViewIndicator$ICallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->callback:Lcom/baidu/launcher/ui/editview/EditViewIndicator$ICallback;

    .line 235
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 1
    .parameter "screenNum"

    .prologue
    .line 98
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->getChildCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iput p1, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mCurrent:I

    .line 104
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->setCurrentShow(I)V

    goto :goto_0
.end method

.method public setSlip(Z)V
    .locals 0
    .parameter "needSlip"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/editview/EditViewIndicator;->mUseFlip:Z

    .line 223
    return-void
.end method
