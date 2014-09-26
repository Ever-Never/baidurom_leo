.class public Lcom/baidu/launcher/utils/ColorBaseItem;
.super Ljava/lang/Object;
.source "ColorBaseItem.java"


# instance fields
.field private back_color:[I

.field private mAvgColorB:I

.field private mAvgColorG:I

.field private mAvgColorLab:[I

.field private mAvgColorR:I

.field private mBmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->back_color:[I

    .line 15
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/ColorBaseItem;->genAverageColor(Landroid/graphics/Bitmap;)V

    .line 17
    iput-object p1, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mBmp:Landroid/graphics/Bitmap;

    .line 18
    return-void

    .line 11
    nop

    :array_0
    .array-data 0x4
        0x69t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private doMatchedMethodRD(Landroid/graphics/Bitmap;)I
    .locals 12
    .parameter "target"

    .prologue
    const/4 v5, -0x1

    const-wide/high16 v10, 0x4000

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 145
    sget-object v2, Lcom/baidu/launcher/utils/Matcher;->cachedTargetLab:[I

    .line 146
    .local v2, targetLab:[I
    aget v4, v2, v7

    if-ne v4, v5, :cond_0

    aget v4, v2, v8

    if-ne v4, v5, :cond_0

    aget v4, v2, v9

    if-ne v4, v5, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/utils/ColorBaseItem;->bmp2rgb(Landroid/graphics/Bitmap;)[I

    move-result-object v3

    .line 148
    .local v3, targetRGB:[I
    aget v4, v3, v7

    aget v5, v3, v8

    aget v6, v3, v9

    invoke-virtual {p0, v4, v5, v6}, Lcom/baidu/launcher/utils/ColorBaseItem;->rgb2lab(III)[I

    move-result-object v0

    .line 149
    .local v0, lab:[I
    aget v4, v0, v7

    aput v4, v2, v7

    .line 150
    aget v4, v0, v8

    aput v4, v2, v8

    .line 151
    aget v4, v0, v9

    aput v4, v2, v9

    .line 153
    .end local v0           #lab:[I
    .end local v3           #targetRGB:[I
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mAvgColorLab:[I

    aget v4, v4, v7

    aget v5, v2, v7

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget-object v6, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mAvgColorLab:[I

    aget v6, v6, v8

    aget v7, v2, v8

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mAvgColorLab:[I

    aget v6, v6, v9

    aget v7, v2, v9

    sub-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 157
    .local v1, ret:I
    return v1
.end method

.method private genAverageColor(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bmp"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/utils/ColorBaseItem;->bmp2rgb(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 26
    .local v0, rgb:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mAvgColorR:I

    .line 27
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mAvgColorG:I

    .line 28
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mAvgColorB:I

    .line 29
    iget v1, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mAvgColorR:I

    iget v2, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mAvgColorG:I

    iget v3, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mAvgColorB:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/baidu/launcher/utils/ColorBaseItem;->rgb2lab(III)[I

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mAvgColorLab:[I

    .line 37
    return-void
.end method


# virtual methods
.method public bmp2rgb(Landroid/graphics/Bitmap;)[I
    .locals 20
    .parameter "bmp"

    .prologue
    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    .line 42
    .local v16, width:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 43
    .local v5, height:I
    const-wide/16 v6, 0x0

    .line 44
    .local v6, numOfPixel:J
    const-wide/16 v13, 0x0

    .line 45
    .local v13, sumR:J
    const-wide/16 v11, 0x0

    .line 46
    .local v11, sumG:J
    const-wide/16 v9, 0x0

    .line 47
    .local v9, sumB:J
    const/4 v4, 0x0

    .local v4, h:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 48
    const/4 v15, 0x0

    .local v15, w:I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 49
    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 50
    .local v3, color:I
    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 51
    .local v2, alpha:I
    const/16 v17, 0xff

    move/from16 v0, v17

    if-ne v2, v0, :cond_0

    .line 52
    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v13, v13, v17

    .line 53
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v11, v11, v17

    .line 54
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v9, v9, v17

    .line 55
    const-wide/16 v17, 0x1

    add-long v6, v6, v17

    .line 48
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 47
    .end local v2           #alpha:I
    .end local v3           #color:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    .end local v15           #w:I
    :cond_2
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v8, v0, [I

    .line 61
    .local v8, ret:[I
    const-wide/16 v17, 0x0

    cmp-long v17, v6, v17

    if-eqz v17, :cond_3

    .line 62
    const/16 v17, 0x0

    div-long v18, v13, v6

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    aput v18, v8, v17

    .line 63
    const/16 v17, 0x1

    div-long v18, v11, v6

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    aput v18, v8, v17

    .line 64
    const/16 v17, 0x2

    div-long v18, v9, v6

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    aput v18, v8, v17

    .line 66
    :cond_3
    return-object v8
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/launcher/utils/ColorBaseItem;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMatchScore(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "target"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/baidu/launcher/utils/ColorBaseItem;->doMatchedMethodRD(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public rgb2lab(III)[I
    .locals 28
    .parameter "R"
    .parameter "G"
    .parameter "B"

    .prologue
    .line 75
    const v12, 0x3c111aa7

    .line 76
    .local v12, eps:F
    const v17, 0x4461d2f7

    .line 78
    .local v17, k:F
    const v4, 0x3f76d730

    .line 79
    .local v4, Xr:F
    const/high16 v6, 0x3f80

    .line 80
    .local v6, Yr:F
    const v8, 0x3f534107

    .line 83
    .local v8, Zr:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x437f

    div-float v19, v23, v24

    .line 84
    .local v19, r:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x437f

    div-float v16, v23, v24

    .line 85
    .local v16, g:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x437f

    div-float v10, v23, v24

    .line 88
    .local v10, b:F
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fa4b5dcc63f1412L

    cmpg-double v23, v23, v25

    if-gtz v23, :cond_0

    .line 89
    const/high16 v23, 0x4140

    div-float v19, v19, v23

    .line 93
    :goto_0
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fa4b5dcc63f1412L

    cmpg-double v23, v23, v25

    if-gtz v23, :cond_1

    .line 94
    const/high16 v23, 0x4140

    div-float v16, v16, v23

    .line 98
    :goto_1
    float-to-double v0, v10

    move-wide/from16 v23, v0

    const-wide v25, 0x3fa4b5dcc63f1412L

    cmpg-double v23, v23, v25

    if-gtz v23, :cond_2

    .line 99
    const/high16 v23, 0x4140

    div-float v10, v10, v23

    .line 103
    :goto_2
    const v23, 0x3edf4236

    mul-float v23, v23, v19

    const v24, 0x3ec5296a

    mul-float v24, v24, v16

    add-float v23, v23, v24

    const v24, 0x3e128582

    mul-float v24, v24, v10

    add-float v3, v23, v24

    .line 104
    .local v3, X:F
    const v23, 0x3e63d4d6

    mul-float v23, v23, v19

    const v24, 0x3f3785d8

    mul-float v24, v24, v16

    add-float v23, v23, v24

    const v24, 0x3d784e3c

    mul-float v24, v24, v10

    add-float v5, v23, v24

    .line 105
    .local v5, Y:F
    const v23, 0x3c6436f9

    mul-float v23, v23, v19

    const v24, 0x3dc6dacb

    mul-float v24, v24, v16

    add-float v23, v23, v24

    const v24, 0x3f36d4dc

    mul-float v24, v24, v10

    add-float v7, v23, v24

    .line 108
    .local v7, Z:F
    div-float v20, v3, v4

    .line 109
    .local v20, xr:F
    div-float v21, v5, v6

    .line 110
    .local v21, yr:F
    div-float v22, v7, v8

    .line 112
    .local v22, zr:F
    cmpl-float v23, v20, v12

    if-lez v23, :cond_3

    .line 113
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd5555555555555L

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v13, v0

    .line 117
    .local v13, fx:F
    :goto_3
    cmpl-float v23, v21, v12

    if-lez v23, :cond_4

    .line 118
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd5555555555555L

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v14, v0

    .line 122
    .local v14, fy:F
    :goto_4
    cmpl-float v23, v22, v12

    if-lez v23, :cond_5

    .line 123
    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd5555555555555L

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v15, v0

    .line 127
    .local v15, fz:F
    :goto_5
    const/high16 v23, 0x42e8

    mul-float v23, v23, v14

    const/high16 v24, 0x4180

    sub-float v2, v23, v24

    .line 128
    .local v2, Ls:F
    const/high16 v23, 0x43fa

    sub-float v24, v13, v14

    mul-float v9, v23, v24

    .line 129
    .local v9, as:F
    const/high16 v23, 0x4348

    sub-float v24, v14, v15

    mul-float v11, v23, v24

    .line 131
    .local v11, bs:F
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 133
    .local v18, lab:[I
    const/16 v23, 0x0

    const-wide v24, 0x4004666666666666L

    float-to-double v0, v2

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3fe0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    aput v24, v18, v23

    .line 134
    const/16 v23, 0x1

    float-to-double v0, v9

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3fe0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    aput v24, v18, v23

    .line 135
    const/16 v23, 0x2

    float-to-double v0, v11

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3fe0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    aput v24, v18, v23

    .line 136
    return-object v18

    .line 91
    .end local v2           #Ls:F
    .end local v3           #X:F
    .end local v5           #Y:F
    .end local v7           #Z:F
    .end local v9           #as:F
    .end local v11           #bs:F
    .end local v13           #fx:F
    .end local v14           #fy:F
    .end local v15           #fz:F
    .end local v18           #lab:[I
    .end local v20           #xr:F
    .end local v21           #yr:F
    .end local v22           #zr:F
    :cond_0
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fac28f5c28f5c29L

    add-double v23, v23, v25

    const-wide v25, 0x3ff0e147ae147ae1L

    div-double v23, v23, v25

    const-wide v25, 0x4003333333333333L

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v19, v0

    goto/16 :goto_0

    .line 96
    :cond_1
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fac28f5c28f5c29L

    add-double v23, v23, v25

    const-wide v25, 0x3ff0e147ae147ae1L

    div-double v23, v23, v25

    const-wide v25, 0x4003333333333333L

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_1

    .line 101
    :cond_2
    float-to-double v0, v10

    move-wide/from16 v23, v0

    const-wide v25, 0x3fac28f5c28f5c29L

    add-double v23, v23, v25

    const-wide v25, 0x3ff0e147ae147ae1L

    div-double v23, v23, v25

    const-wide v25, 0x4003333333333333L

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v10, v0

    goto/16 :goto_2

    .line 115
    .restart local v3       #X:F
    .restart local v5       #Y:F
    .restart local v7       #Z:F
    .restart local v20       #xr:F
    .restart local v21       #yr:F
    .restart local v22       #zr:F
    :cond_3
    mul-float v23, v17, v20

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4030

    add-double v23, v23, v25

    const-wide/high16 v25, 0x405d

    div-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v13, v0

    .restart local v13       #fx:F
    goto/16 :goto_3

    .line 120
    :cond_4
    mul-float v23, v17, v21

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4030

    add-double v23, v23, v25

    const-wide/high16 v25, 0x405d

    div-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v14, v0

    .restart local v14       #fy:F
    goto/16 :goto_4

    .line 125
    :cond_5
    mul-float v23, v17, v22

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x4030

    add-double v23, v23, v25

    const-wide/high16 v25, 0x405d

    div-double v23, v23, v25

    move-wide/from16 v0, v23

    double-to-float v15, v0

    .restart local v15       #fz:F
    goto/16 :goto_5
.end method
