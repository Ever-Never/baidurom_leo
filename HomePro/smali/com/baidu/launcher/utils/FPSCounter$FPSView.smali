.class Lcom/baidu/launcher/utils/FPSCounter$FPSView;
.super Landroid/view/View;
.source "FPSCounter.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/utils/FPSCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FPSView"
.end annotation


# static fields
.field private static final CHART_GRANULARITY:I = 0x4

.field private static final CHART_LENGTH:I = 0xf0

.field private static final CHART_X:F = 0.0f

.field private static final CHART_Y:F = 40.0f

.field static final ID:I = 0x198249

.field static final MAX_INTERVAL:I = 0x1f4

.field static final ONE_SECOND:I = 0x3e8

.field private static mPaint:Landroid/graphics/Paint;


# instance fields
.field private mAverageFps:I

.field private mDrawTimestamp:J

.field private mFpsChart:[F

.field private mFpsCounter:I

.field private mInstantFps:I

.field private mText:Ljava/lang/StringBuilder;

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mText:Ljava/lang/StringBuilder;

    .line 68
    const/16 v0, 0x3c0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    .line 72
    const v0, 0x198249

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->setId(I)V

    .line 74
    sget-object v0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 75
    sget-object v0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 76
    invoke-direct {p0}, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->resetFpsChart()V

    .line 77
    return-void
.end method

.method private appendFpsChart(I)V
    .locals 7
    .parameter "fps"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    add-int/lit8 v2, v0, 0x0

    aget v3, v1, v2

    add-float/2addr v3, v6

    aput v3, v1, v2

    .line 152
    iget-object v1, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    add-int/lit8 v2, v0, 0x2

    aget v3, v1, v2

    add-float/2addr v3, v6

    aput v3, v1, v2

    .line 154
    iget-object v1, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    add-int/lit8 v2, v0, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x43f0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    add-int/lit8 v2, v0, 0x0

    aput v5, v1, v2

    .line 156
    iget-object v1, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    add-int/lit8 v2, v0, 0x2

    aput v5, v1, v2

    .line 157
    iget-object v1, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    add-int/lit8 v2, v0, 0x3

    const/high16 v3, 0x4220

    shr-int/lit8 v4, p1, 0x1

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 160
    :cond_1
    return-void
.end method

.method private calculateFps()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v8, 0x0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 97
    .local v4, now:J
    iget-wide v6, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mDrawTimestamp:J

    sub-long v2, v4, v6

    .line 98
    .local v2, interval:J
    iget-wide v6, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mTimestamp:J

    sub-long v0, v4, v6

    .line 100
    .local v0, elapsed:J
    iget v6, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsCounter:I

    .line 101
    iput-wide v4, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mDrawTimestamp:J

    .line 103
    const-wide/16 v6, 0x1f4

    cmp-long v6, v2, v6

    if-lez v6, :cond_1

    .line 104
    iput-wide v4, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mTimestamp:J

    .line 105
    iput v8, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsCounter:I

    .line 116
    :cond_0
    :goto_0
    iget v6, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mInstantFps:I

    invoke-direct {p0, v6}, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->appendFpsChart(I)V

    .line 117
    return-void

    .line 107
    :cond_1
    div-long v6, v9, v2

    long-to-int v6, v6

    iput v6, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mInstantFps:I

    .line 109
    cmp-long v6, v0, v9

    if-lez v6, :cond_0

    .line 110
    iput-wide v4, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mTimestamp:J

    .line 111
    iget v6, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsCounter:I

    iput v6, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mAverageFps:I

    .line 112
    iput v8, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsCounter:I

    goto :goto_0
.end method

.method private resetFpsChart()V
    .locals 5

    .prologue
    const/high16 v4, 0x4220

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, x:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 140
    iget-object v2, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    add-int/lit8 v3, v0, 0x0

    aput v1, v2, v3

    .line 141
    iget-object v2, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    add-int/lit8 v3, v0, 0x1

    aput v4, v2, v3

    .line 142
    iget-object v2, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    add-int/lit8 v3, v0, 0x2

    aput v1, v2, v3

    .line 143
    iget-object v2, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    add-int/lit8 v3, v0, 0x3

    aput v4, v2, v3

    .line 144
    const/high16 v2, 0x4000

    add-float/2addr v1, v2

    .line 139
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method private setDirty()V
    .locals 5

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 125
    .local v2, parent:Landroid/view/ViewParent;
    const-class v3, Landroid/view/View;

    const-string v4, "mParent"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 126
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 127
    .local v0, accessible:Z
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 128
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->invalidate()V

    .line 132
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0           #accessible:Z
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #parent:Landroid/view/ViewParent;
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->bringToFront()V

    .line 167
    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 172
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->calculateFps()V

    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mText:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 84
    iget-object v0, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mText:Ljava/lang/StringBuilder;

    const-string v1, "fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mAverageFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mInstantFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    sget-object v0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mText:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x40a0

    const/high16 v2, 0x4270

    sget-object v3, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 89
    sget-object v0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mFpsChart:[F

    sget-object v1, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 92
    invoke-direct {p0}, Lcom/baidu/launcher/utils/FPSCounter$FPSView;->setDirty()V

    .line 93
    return-void
.end method
