.class public Lcom/baidu/launcher/thememanager/view/Indicator;
.super Landroid/view/ViewGroup;
.source "Indicator.java"


# static fields
.field static final DBG:Z = true

.field public static PIXEL_DENSITY:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Indicator"


# instance fields
.field private mDetail:Landroid/content/Context;

.field private mGap:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/baidu/launcher/thememanager/view/Indicator;->PIXEL_DENSITY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/thememanager/view/Indicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/thememanager/view/Indicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget v1, Lcom/baidu/launcher/thememanager/view/Indicator;->PIXEL_DENSITY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .local v0, metrics:Landroid/util/DisplayMetrics;
    move-object v1, p1

    .line 53
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 54
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/baidu/launcher/thememanager/view/Indicator;->PIXEL_DENSITY:F

    .line 57
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    sget v1, Lcom/baidu/launcher/thememanager/view/Indicator;->PIXEL_DENSITY:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mHeight:I

    .line 59
    sget v1, Lcom/baidu/launcher/thememanager/view/Indicator;->PIXEL_DENSITY:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mWidth:I

    .line 61
    sget v1, Lcom/baidu/launcher/thememanager/view/Indicator;->PIXEL_DENSITY:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mGap:I

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 65
    return-void
.end method

.method private delIndicator()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->getChildCount()I

    move-result v0

    .line 86
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 88
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/thememanager/view/Indicator;->removeViewAt(I)V

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v6, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->getChildCount()I

    move-result v1

    .line 133
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 150
    :cond_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mWidth:I

    mul-int/2addr v8, v1

    sub-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    iget v9, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mGap:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 138
    .local v3, tmpX:I
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mHeight:I

    sub-int/2addr v7, v8

    div-int/lit8 v4, v7, 0x2

    .line 140
    .local v4, tmpY:I
    if-lez v3, :cond_4

    move v5, v3

    .line 141
    .local v5, x:I
    :goto_0
    if-lez v4, :cond_2

    move v6, v4

    .line 142
    .local v6, y:I
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 143
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/thememanager/view/Indicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 144
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    .line 146
    iget v7, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mWidth:I

    add-int/2addr v7, v5

    iget v8, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mHeight:I

    add-int/2addr v8, v6

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 147
    iget v7, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mWidth:I

    iget v8, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mGap:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 142
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_4
    move v5, v6

    .line 140
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 109
    .local v6, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 111
    .local v7, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 112
    .local v3, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 114
    .local v4, heightSpecSize:I
    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    .line 115
    :cond_0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "AppDock cannot have UNSPECIFIED dimensions"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 118
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->getChildCount()I

    move-result v8

    if-ge v5, v8, :cond_2

    .line 119
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/thememanager/view/Indicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 120
    .local v0, child:Landroid/view/View;
    iget v8, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mWidth:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 121
    .local v1, childWidthMeasureSpec:I
    iget v8, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mHeight:I

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 123
    .local v2, childheightMeasureSpec:I
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 118
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childWidthMeasureSpec:I
    .end local v2           #childheightMeasureSpec:I
    :cond_2
    invoke-virtual {p0, v7, v4}, Lcom/baidu/launcher/thememanager/view/Indicator;->setMeasuredDimension(II)V

    .line 127
    return-void
.end method

.method public setCurrentDetail(I)V
    .locals 3
    .parameter "detailNum"

    .prologue
    .line 94
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->getChildCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 104
    :cond_0
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/view/Indicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 98
    .local v1, v:Landroid/widget/ImageView;
    if-ne v0, p1, :cond_2

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 96
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_1
.end method

.method public setDetail(Landroid/content/Context;)V
    .locals 0
    .parameter "detail"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mDetail:Landroid/content/Context;

    .line 82
    return-void
.end method

.method public setIndicator(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mDetail:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->delIndicator()V

    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 72
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/view/Indicator;->mDetail:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, view:Landroid/widget/ImageView;
    const v2, 0x7f020114

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 75
    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/view/Indicator;->addView(Landroid/view/View;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v0           #i:I
    .end local v1           #view:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
