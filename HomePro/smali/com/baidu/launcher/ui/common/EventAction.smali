.class public Lcom/baidu/launcher/ui/common/EventAction;
.super Ljava/lang/Object;
.source "EventAction.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mNumberPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/EventAction;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/baidu/launcher/ui/common/EventAction;->mDensity:F

    .line 21
    return-void
.end method

.method private initPaint()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f80

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .local v0, p:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    const/high16 v1, 0x4160

    iget v2, p0, Lcom/baidu/launcher/ui/common/EventAction;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    const/high16 v1, 0x4000

    const v2, -0xbbbbbc

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 77
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 78
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iput-object v0, p0, Lcom/baidu/launcher/ui/common/EventAction;->mNumberPaint:Landroid/graphics/Paint;

    .line 80
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;III)V
    .locals 13
    .parameter "canvas"
    .parameter "number"
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 27
    if-lez p2, :cond_5

    .line 28
    iget-object v9, p0, Lcom/baidu/launcher/ui/common/EventAction;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/baidu/launcher/utils/Utilities;->getEventNumberBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 29
    .local v4, numBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int p3, p3, v9

    .line 30
    move/from16 v0, p3

    int-to-float v9, v0

    move/from16 v0, p4

    int-to-float v10, v0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 33
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    iget-object v9, p0, Lcom/baidu/launcher/ui/common/EventAction;->mNumberPaint:Landroid/graphics/Paint;

    if-nez v9, :cond_3

    .line 36
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/EventAction;->initPaint()V

    .line 41
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 42
    .local v8, width:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 43
    .local v2, height:I
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, str:Ljava/lang/String;
    iget-object v9, p0, Lcom/baidu/launcher/ui/common/EventAction;->mNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v5, v9

    .line 45
    .local v5, realW:I
    sub-int v9, v8, v5

    div-int/lit8 v3, v9, 0x2

    .line 46
    .local v3, left:I
    div-int/lit8 v9, v2, 0x2

    add-int/lit8 v7, v9, 0x3

    .line 48
    .local v7, top:I
    const/16 v9, 0x63

    if-le p2, v9, :cond_1

    .line 49
    const/16 v1, 0x1c

    .line 50
    .local v1, fontSize:I
    :goto_1
    const/4 v9, 0x2

    if-lt v1, v9, :cond_0

    .line 51
    iget-object v9, p0, Lcom/baidu/launcher/ui/common/EventAction;->mNumberPaint:Landroid/graphics/Paint;

    int-to-float v10, v1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 52
    iget-object v9, p0, Lcom/baidu/launcher/ui/common/EventAction;->mNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v5, v9

    .line 53
    add-int/lit8 v9, v8, -0x14

    if-ge v5, v9, :cond_4

    .line 57
    :cond_0
    sub-int v9, v8, v5

    div-int/lit8 v3, v9, 0x2

    .line 58
    div-int/lit8 v9, v2, 0x2

    add-int/lit8 v7, v9, 0x3

    .line 60
    .end local v1           #fontSize:I
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    int-to-float v10, v3

    int-to-float v11, v7

    iget-object v12, p0, Lcom/baidu/launcher/ui/common/EventAction;->mNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    move/from16 v0, p3

    neg-int v9, v0

    int-to-float v9, v9

    move/from16 v0, p4

    neg-int v10, v0

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    .end local v2           #height:I
    .end local v3           #left:I
    .end local v4           #numBg:Landroid/graphics/drawable/Drawable;
    .end local v5           #realW:I
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #top:I
    .end local v8           #width:I
    :cond_2
    :goto_2
    return-void

    .line 38
    .restart local v4       #numBg:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v9, p0, Lcom/baidu/launcher/ui/common/EventAction;->mNumberPaint:Landroid/graphics/Paint;

    const/high16 v10, 0x4160

    iget v11, p0, Lcom/baidu/launcher/ui/common/EventAction;->mDensity:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 50
    .restart local v1       #fontSize:I
    .restart local v2       #height:I
    .restart local v3       #left:I
    .restart local v5       #realW:I
    .restart local v6       #str:Ljava/lang/String;
    .restart local v7       #top:I
    .restart local v8       #width:I
    :cond_4
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 62
    .end local v1           #fontSize:I
    .end local v2           #height:I
    .end local v3           #left:I
    .end local v4           #numBg:Landroid/graphics/drawable/Drawable;
    .end local v5           #realW:I
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #top:I
    .end local v8           #width:I
    :cond_5
    if-gez p2, :cond_2

    .line 63
    iget-object v9, p0, Lcom/baidu/launcher/ui/common/EventAction;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/baidu/launcher/utils/Utilities;->getEventErrorBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 64
    .restart local v4       #numBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int p3, p3, v9

    .line 65
    move/from16 v0, p3

    int-to-float v9, v0

    move/from16 v0, p4

    int-to-float v10, v0

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 66
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    move/from16 v0, p3

    neg-int v9, v0

    int-to-float v9, v9

    move/from16 v0, p4

    neg-int v10, v0

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2
.end method
