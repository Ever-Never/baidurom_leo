.class public Lcom/baidu/launcher/utils/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


# static fields
.field private static final EXTRA_THICK:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final MAX_OUTER_BLUR_RADIUS:I = 0x0

.field private static final MEDIUM:I = 0x1

.field public static final MIN_OUTER_BLUR_RADIUS:I

.field private static final THICK:I

.field private static instance:Lcom/baidu/launcher/utils/HolographicOutlineHelper;

.field private static final sCoarseClipTable:Landroid/graphics/MaskFilter;

.field private static final sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private static final sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final mAlphaClipPaint:Landroid/graphics/Paint;

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private mTempOffset:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/high16 v2, 0x4140

    const/high16 v6, 0x40c0

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 52
    sget v0, Lcom/baidu/launcher/app/LauncherApplication;->density:F

    .line 54
    .local v0, scale:F
    mul-float v1, v0, v4

    float-to-int v1, v1

    sput v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->MIN_OUTER_BLUR_RADIUS:I

    .line 55
    mul-float v1, v0, v2

    float-to-int v1, v1

    sput v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 57
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 59
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 60
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v4

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 61
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 62
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 63
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 66
    const/4 v1, 0x0

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v1

    sput-object v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    .line 68
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mTempOffset:[I

    .line 80
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 81
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 83
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 85
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 86
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    const/16 v1, 0xb4

    const/16 v2, 0xff

    invoke-static {v1, v2}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    .line 88
    .local v0, alphaClipTable:Landroid/graphics/MaskFilter;
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 89
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/launcher/utils/HolographicOutlineHelper;
    .locals 2

    .prologue
    .line 73
    const-class v1, Lcom/baidu/launcher/utils/HolographicOutlineHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->instance:Lcom/baidu/launcher/utils/HolographicOutlineHelper;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/baidu/launcher/utils/HolographicOutlineHelper;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->instance:Lcom/baidu/launcher/utils/HolographicOutlineHelper;

    .line 76
    :cond_0
    sget-object v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->instance:Lcom/baidu/launcher/utils/HolographicOutlineHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static highlightAlphaInterpolator(F)F
    .locals 5
    .parameter "r"

    .prologue
    .line 96
    const v0, 0x3f19999a

    .line 97
    .local v0, maxAlpha:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, p0

    mul-float/2addr v1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public static viewAlphaInterpolator(F)F
    .locals 5
    .parameter "r"

    .prologue
    const v2, 0x3f733333

    .line 104
    const v0, 0x3f733333

    .line 105
    .local v0, pivot:F
    cmpg-float v1, p0, v2

    if-gez v1, :cond_0

    .line 106
    div-float v1, p0, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    .line 108
    :goto_0
    return v1

    :cond_0
    const/high16 v1, 0x3f80

    goto :goto_0
.end method


# virtual methods
.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V
    .locals 8
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"
    .parameter "thickness"

    .prologue
    .line 136
    iget-object v5, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;IZ)V

    .line 138
    return-void
.end method

.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V
    .locals 17
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"
    .parameter "alphaClipPaint"
    .parameter "thickness"

    .prologue
    .line 144
    if-nez p5, :cond_0

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    move-object/from16 p5, v0

    .line 147
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mTempOffset:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 151
    .local v10, glowShape:Landroid/graphics/Bitmap;
    packed-switch p6, :pswitch_data_0

    .line 162
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid blur thickness"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :pswitch_0
    sget-object v12, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sExtraThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 164
    .local v12, outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 165
    const/4 v2, 0x2

    new-array v13, v2, [I

    .line 166
    .local v13, outerBlurOffset:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v13}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 167
    .local v16, thickOuterBlur:Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    move/from16 v0, p6

    if-ne v0, v2, :cond_1

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 173
    :goto_1
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 174
    .local v9, brightOutlineOffset:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v9}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 177
    .local v8, brightOutline:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    const/high16 v2, -0x100

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 180
    packed-switch p6, :pswitch_data_1

    .line 191
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid blur thickness"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    .end local v8           #brightOutline:Landroid/graphics/Bitmap;
    .end local v9           #brightOutlineOffset:[I
    .end local v12           #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    .end local v13           #outerBlurOffset:[I
    .end local v16           #thickOuterBlur:Landroid/graphics/Bitmap;
    :pswitch_1
    sget-object v12, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 157
    .restart local v12       #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto :goto_0

    .line 159
    .end local v12           #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :pswitch_2
    sget-object v12, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sMediumOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 160
    .restart local v12       #outerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto :goto_0

    .line 170
    .restart local v13       #outerBlurOffset:[I
    .restart local v16       #thickOuterBlur:Landroid/graphics/Bitmap;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sThinOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_1

    .line 182
    .restart local v8       #brightOutline:Landroid/graphics/Bitmap;
    .restart local v9       #brightOutlineOffset:[I
    :pswitch_3
    sget-object v11, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sExtraThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 193
    .local v11, innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 194
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 195
    .local v15, thickInnerBlurOffset:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v2, v15}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 198
    .local v14, thickInnerBlur:Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    const/4 v2, 0x0

    aget v2, v15, v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v15, v3

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    aget v2, v15, v2

    neg-int v2, v2

    int-to-float v5, v2

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v2, 0x1

    aget v2, v15, v2

    neg-int v2, v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 208
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    const/4 v2, 0x0

    aget v2, v15, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v15, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 212
    const/4 v2, 0x0

    aget v2, v13, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v13, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 221
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    :cond_2
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    return-void

    .line 185
    .end local v11           #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    .end local v14           #thickInnerBlur:Landroid/graphics/Bitmap;
    .end local v15           #thickInnerBlurOffset:[I
    :pswitch_4
    sget-object v11, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sThickInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 186
    .restart local v11       #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_2

    .line 188
    .end local v11           #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    :pswitch_5
    sget-object v11, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sMediumInnerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 189
    .restart local v11       #innerBlurMaskFilter:Landroid/graphics/BlurMaskFilter;
    goto/16 :goto_2

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 180
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;IZ)V
    .locals 5
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"
    .parameter "alphaClipPaint"
    .parameter "thickness"
    .parameter "b"

    .prologue
    const/high16 v4, -0x4080

    .line 253
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mTempOffset:[I

    invoke-virtual {p1, p5, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 254
    .local v0, glowShape:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 264
    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->isSDKICE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    return-void
.end method

.method public applyExtraThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"

    .prologue
    .line 232
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 233
    return-void
.end method

.method public applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"

    .prologue
    .line 248
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 249
    return-void
.end method

.method public applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;)V
    .locals 7
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"
    .parameter "alphaClipPaint"

    .prologue
    .line 242
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V

    .line 244
    return-void
.end method

.method public applyOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "bitmap"
    .parameter "canvas"
    .parameter "color"

    .prologue
    .line 118
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sThickOuterBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 119
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mTempOffset:[I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, glow:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->sCoarseClipTable:Landroid/graphics/MaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 123
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v1, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mTempOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 128
    return-void
.end method

.method applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .locals 6
    .parameter "srcDst"
    .parameter "srcDstCanvas"
    .parameter "color"
    .parameter "outlineColor"

    .prologue
    .line 237
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/utils/HolographicOutlineHelper;->applyExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 238
    return-void
.end method
