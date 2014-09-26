.class public Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;
.super Landroid/view/ViewGroup;
.source "AllAppsIndicatorNew.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew$ICallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EditViewIndicator"


# instance fields
.field private callback:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew$ICallback;

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
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
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

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput v2, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mCurrent:I

    .line 39
    const/high16 v1, -0x4080

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mLastpos:F

    .line 40
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mUseFlip:Z

    .line 41
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mIsFlip:Z

    .line 44
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->callback:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew$ICallback;

    .line 234
    iput-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->isAddScreen:Z

    .line 56
    sget-object v1, Lcom/baidu/home2/R$styleable;->Indicator:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mWidth:I

    .line 61
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mHeight:I

    .line 63
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mGap:I

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 67
    return-void
.end method

.method private setCurrentShow(I)V
    .locals 4
    .parameter "screen"

    .prologue
    .line 106
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildCount()I

    move-result v2

    if-le p1, v2, :cond_1

    .line 118
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 109
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 110
    .local v1, v:Landroid/widget/ImageView;
    if-ne v0, p1, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getResources()Landroid/content/res/Resources;

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
    .line 70
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, view:Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->addView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public addScreen(I)V
    .locals 2
    .parameter "drawable"

    .prologue
    .line 81
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, view:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 84
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->addView(Landroid/view/View;)V

    .line 86
    return-void
.end method

.method public delScreen()V
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildCount()I

    move-result v0

    .line 90
    .local v0, count:I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->removeViewAt(I)V

    .line 93
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

    .line 195
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildCount()I

    move-result v8

    iget-boolean v7, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->isAddScreen:Z

    if-eqz v7, :cond_1

    move v7, v6

    :goto_0
    sub-int v1, v8, v7

    .line 197
    .local v1, count:I
    if-gtz v1, :cond_2

    .line 198
    const-string v7, "EditViewIndicator"

    const-string v8, "on child found"

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    return-void

    .line 195
    .end local v1           #count:I
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 202
    .restart local v1       #count:I
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mWidth:I

    mul-int/2addr v8, v1

    sub-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    iget v9, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mGap:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 203
    .local v3, tmpX:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mHeight:I

    sub-int/2addr v7, v8

    div-int/lit8 v4, v7, 0x2

    .line 205
    .local v4, tmpY:I
    if-lez v3, :cond_5

    move v5, v3

    .line 206
    .local v5, x:I
    :goto_1
    if-lez v4, :cond_3

    move v6, v4

    .line 207
    .local v6, y:I
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildCount()I

    move-result v1

    .line 208
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 209
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    .line 212
    iget v7, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mWidth:I

    add-int/2addr v7, v5

    iget v8, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mHeight:I

    add-int/2addr v8, v6

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 213
    iget v7, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mWidth:I

    iget v8, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mGap:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 208
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_5
    move v5, v6

    .line 205
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 170
    .local v6, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 172
    .local v7, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 173
    .local v3, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 175
    .local v4, heightSpecSize:I
    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    .line 177
    :cond_0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "AppDock cannot have UNSPECIFIED dimensions"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 181
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 182
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, child:Landroid/view/View;
    iget v8, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mWidth:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 185
    .local v1, childWidthMeasureSpec:I
    iget v8, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mHeight:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 187
    .local v2, childheightMeasureSpec:I
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 181
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidthMeasureSpec:I
    .end local v2           #childheightMeasureSpec:I
    :cond_2
    invoke-virtual {p0, v7, v4}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->setMeasuredDimension(II)V

    .line 191
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew$ICallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->callback:Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew$ICallback;

    .line 232
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 1
    .parameter "screenNum"

    .prologue
    .line 96
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->getChildCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iput p1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mCurrent:I

    .line 102
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->setCurrentShow(I)V

    goto :goto_0
.end method

.method public setSlip(Z)V
    .locals 0
    .parameter "needSlip"

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicatorNew;->mUseFlip:Z

    .line 220
    return-void
.end method
