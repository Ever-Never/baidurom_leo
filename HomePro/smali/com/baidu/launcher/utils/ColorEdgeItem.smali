.class public Lcom/baidu/launcher/utils/ColorEdgeItem;
.super Ljava/lang/Object;
.source "ColorEdgeItem.java"


# instance fields
.field private mAvgColorA:I

.field private mAvgColorB:I

.field private mAvgColorG:I

.field private mAvgColorR:I

.field private mBmp:Landroid/graphics/Bitmap;

.field private mEdgePercent:I

.field private mRoundPx:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/content/Context;)V
    .locals 1
    .parameter "bmp"
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x14

    iput v0, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mEdgePercent:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mRoundPx:F

    .line 29
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/ColorEdgeItem;->genAverageColor(Landroid/graphics/Bitmap;)V

    .line 30
    invoke-direct {p0, p2}, Lcom/baidu/launcher/utils/ColorEdgeItem;->makeRoundedCornerBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mBmp:Landroid/graphics/Bitmap;

    .line 31
    return-void
.end method

.method private genAverageColor(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/utils/ColorEdgeItem;->bmp2rgb(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 39
    .local v0, rgb:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mAvgColorR:I

    .line 40
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mAvgColorG:I

    .line 41
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mAvgColorB:I

    .line 42
    return-void
.end method

.method private makeRoundedCornerBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 80
    invoke-static {}, Lcom/baidu/launcher/utils/Utilities;->getAppIconSize()I

    move-result v7

    int-to-float v7, v7

    sget v8, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->iconScale:F

    mul-float/2addr v7, v8

    float-to-int v2, v7

    .line 81
    .local v2, iconSzie:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 83
    .local v3, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v0, canvas:Landroid/graphics/Canvas;
    iget v7, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mAvgColorR:I

    iget v8, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mAvgColorG:I

    iget v9, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mAvgColorB:I

    invoke-static {v7, v8, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 85
    .local v1, color:I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 86
    .local v4, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v10, v10, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 87
    .local v5, rect:Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 88
    .local v6, rectF:Landroid/graphics/RectF;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 90
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    iget v7, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mRoundPx:F

    iget v8, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mRoundPx:F

    invoke-virtual {v0, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 92
    invoke-direct {p0, v2, p1, v0}, Lcom/baidu/launcher/utils/ColorEdgeItem;->maskResultBitmap(ILandroid/content/Context;Landroid/graphics/Canvas;)V

    .line 93
    return-object v3
.end method

.method private maskResultBitmap(ILandroid/content/Context;Landroid/graphics/Canvas;)V
    .locals 15
    .parameter "iconSzie"
    .parameter "context"
    .parameter "canvas"

    .prologue
    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020043

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 98
    .local v2, maskBg:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 100
    move/from16 v7, p1

    .local v7, textureHeight:I
    move/from16 v8, p1

    .line 101
    .local v8, textureWidth:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 102
    .local v4, maskW:I
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 103
    .local v3, maskH:I
    sub-int v10, v8, v4

    div-int/lit8 v1, v10, 0x2

    .line 104
    .local v1, left:I
    sub-int v10, v7, v3

    div-int/lit8 v9, v10, 0x2

    .line 105
    .local v9, top:I
    const/16 v10, 0x52

    if-lt v8, v10, :cond_1

    .line 106
    new-instance v10, Landroid/graphics/Rect;

    add-int/lit8 v11, v1, -0x4

    add-int/lit8 v12, v9, -0x4

    add-int v13, v1, v4

    add-int/lit8 v13, v13, 0x4

    add-int v14, v9, v3

    add-int/lit8 v14, v14, 0x4

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 110
    :goto_0
    new-instance v6, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v6, v10, v11, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 111
    .local v6, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 112
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 114
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #maskBg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 116
    .end local v1           #left:I
    .end local v3           #maskH:I
    .end local v4           #maskW:I
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v6           #rect:Landroid/graphics/Rect;
    .end local v7           #textureHeight:I
    .end local v8           #textureWidth:I
    .end local v9           #top:I
    :cond_0
    return-void

    .line 108
    .restart local v1       #left:I
    .restart local v2       #maskBg:Landroid/graphics/drawable/Drawable;
    .restart local v3       #maskH:I
    .restart local v4       #maskW:I
    .restart local v7       #textureHeight:I
    .restart local v8       #textureWidth:I
    .restart local v9       #top:I
    :cond_1
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v1, v4

    add-int v12, v9, v3

    invoke-direct {v10, v1, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method public bmp2rgb(Landroid/graphics/Bitmap;)[I
    .locals 24
    .parameter "bmp"

    .prologue
    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 46
    .local v19, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 47
    .local v5, height:I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v6, v0, [I

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mEdgePercent:I

    move/from16 v22, v0

    mul-int v22, v22, v5

    div-int/lit8 v22, v22, 0x64

    aput v22, v6, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mEdgePercent:I

    move/from16 v22, v0

    rsub-int/lit8 v22, v22, 0x64

    mul-int v22, v22, v5

    div-int/lit8 v22, v22, 0x64

    aput v22, v6, v21

    .line 48
    .local v6, heightEdge:[I
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mEdgePercent:I

    move/from16 v22, v0

    mul-int v22, v22, v19

    div-int/lit8 v22, v22, 0x64

    aput v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mEdgePercent:I

    move/from16 v22, v0

    rsub-int/lit8 v22, v22, 0x64

    mul-int v22, v22, v19

    div-int/lit8 v22, v22, 0x64

    aput v22, v20, v21

    .line 49
    .local v20, widthEdge:[I
    const-wide/16 v7, 0x0

    .line 50
    .local v7, numOfPixel:J
    const-wide/16 v16, 0x0

    .line 51
    .local v16, sumR:J
    const-wide/16 v14, 0x0

    .line 52
    .local v14, sumG:J
    const-wide/16 v12, 0x0

    .line 53
    .local v12, sumB:J
    const-wide/16 v10, 0x0

    .line 54
    .local v10, sumA:J
    const/4 v4, 0x0

    .local v4, h:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 55
    const/16 v18, 0x0

    .local v18, w:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 56
    const/16 v21, 0x0

    aget v21, v6, v21

    move/from16 v0, v21

    if-le v4, v0, :cond_0

    const/16 v21, 0x1

    aget v21, v6, v21

    move/from16 v0, v21

    if-ge v4, v0, :cond_0

    const/16 v21, 0x0

    aget v21, v20, v21

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    const/16 v21, 0x1

    aget v21, v20, v21

    move/from16 v0, v18

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    .line 58
    :cond_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 59
    .local v3, color:I
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 60
    .local v2, alpha:I
    const/16 v21, 0xff

    move/from16 v0, v21

    if-ne v2, v0, :cond_1

    .line 61
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v16, v16, v21

    .line 62
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v14, v14, v21

    .line 63
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v12, v12, v21

    .line 64
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    add-long v10, v10, v21

    .line 65
    const-wide/16 v21, 0x1

    add-long v7, v7, v21

    .line 55
    .end local v2           #alpha:I
    .end local v3           #color:I
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 54
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    .end local v18           #w:I
    :cond_3
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v9, v0, [I

    .line 71
    .local v9, ret:[I
    const-wide/16 v21, 0x0

    cmp-long v21, v7, v21

    if-eqz v21, :cond_4

    .line 72
    const/16 v21, 0x0

    div-long v22, v16, v7

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    aput v22, v9, v21

    .line 73
    const/16 v21, 0x1

    div-long v22, v14, v7

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    aput v22, v9, v21

    .line 74
    const/16 v21, 0x2

    div-long v22, v12, v7

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    aput v22, v9, v21

    .line 76
    :cond_4
    return-object v9
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/launcher/utils/ColorEdgeItem;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method
