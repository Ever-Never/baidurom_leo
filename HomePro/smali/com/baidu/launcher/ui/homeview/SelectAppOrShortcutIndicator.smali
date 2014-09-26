.class public Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;
.super Lcom/baidu/launcher/ui/homeview/Indicator;
.source "SelectAppOrShortcutIndicator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectAppOrShortcutIndicator"


# instance fields
.field private mGap:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/homeview/Indicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v1, Lcom/baidu/home2/R$styleable;->Indicator:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mWidth:I

    .line 50
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mHeight:I

    .line 51
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mGap:I

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public addScreen()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, view:Landroid/widget/ImageView;
    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 62
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->addView(Landroid/view/View;)V

    .line 64
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

    .line 68
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->getChildCount()I

    move-result v1

    .line 70
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 71
    const-string v7, "SelectAppOrShortcutIndicator"

    const-string v8, "on child found"

    invoke-static {v7, v8}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mWidth:I

    mul-int/2addr v8, v1

    sub-int/2addr v7, v8

    add-int/lit8 v8, v1, -0x1

    iget v9, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mGap:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    div-int/lit8 v3, v7, 0x2

    .line 76
    .local v3, tmpX:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mHeight:I

    sub-int/2addr v7, v8

    div-int/lit8 v4, v7, 0x2

    .line 78
    .local v4, tmpY:I
    if-lez v3, :cond_4

    move v5, v3

    .line 79
    .local v5, x:I
    :goto_0
    if-lez v4, :cond_2

    move v6, v4

    .line 80
    .local v6, y:I
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->getChildCount()I

    move-result v1

    .line 81
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 82
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_3

    .line 85
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mWidth:I

    add-int/2addr v7, v5

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mHeight:I

    add-int/2addr v8, v6

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 86
    iget v7, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mWidth:I

    iget v8, p0, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutIndicator;->mGap:I

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    .line 81
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_4
    move v5, v6

    .line 78
    goto :goto_0
.end method
