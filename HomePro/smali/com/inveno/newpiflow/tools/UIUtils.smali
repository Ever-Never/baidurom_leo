.class public Lcom/inveno/newpiflow/tools/UIUtils;
.super Ljava/lang/Object;
.source "UIUtils.java"


# static fields
.field public static final ACTIONBAR_HEIGHT:I = 0x10102eb

.field private static context:Landroid/content/Context;

.field private static dm:Landroid/util/DisplayMetrics;

.field private static followSystemBackground:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->context:Landroid/content/Context;

    .line 20
    sput-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inveno/newpiflow/tools/UIUtils;->followSystemBackground:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countViewAdvHeight(III)I
    .locals 3
    .parameter "count"
    .parameter "innerMargin"
    .parameter "outerMargin"

    .prologue
    .line 163
    sget-object v1, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, p2, 0x2

    sub-int v0, v1, v2

    .line 164
    .local v0, height:I
    add-int/lit8 v1, p0, -0x1

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 165
    div-int/2addr v0, p0

    .line 166
    return v0
.end method

.method public static countViewAdvHeightByFrame(IIII)I
    .locals 2
    .parameter "count"
    .parameter "innerMargin"
    .parameter "outerMargin"
    .parameter "frameHeight"

    .prologue
    .line 171
    mul-int/lit8 v1, p2, 0x2

    sub-int v0, p3, v1

    .line 172
    .local v0, height:I
    add-int/lit8 v1, p0, -0x1

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 173
    div-int/2addr v0, p0

    .line 174
    return v0
.end method

.method public static countViewAdvWidth(III)I
    .locals 3
    .parameter "count"
    .parameter "innerMargin"
    .parameter "outerMargin"

    .prologue
    .line 147
    sget-object v1, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, p2, 0x2

    sub-int v0, v1, v2

    .line 148
    .local v0, width:I
    add-int/lit8 v1, p0, -0x1

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 149
    div-int/2addr v0, p0

    .line 150
    return v0
.end method

.method public static countViewAdvWidthByFrame(IIII)I
    .locals 2
    .parameter "count"
    .parameter "innerMargin"
    .parameter "outerMargin"
    .parameter "frameWidth"

    .prologue
    .line 155
    mul-int/lit8 v1, p2, 0x2

    sub-int v0, p3, v1

    .line 156
    .local v0, width:I
    add-int/lit8 v1, p0, -0x1

    mul-int/2addr v1, p1

    sub-int/2addr v0, v1

    .line 157
    div-int/2addr v0, p0

    .line 158
    return v0
.end method

.method public static dipToPx(I)I
    .locals 2
    .parameter "dip"

    .prologue
    .line 125
    sget-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, -0x1

    .line 128
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    sget-object v1, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static getActionBarHeight()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 310
    sget-object v2, Lcom/inveno/newpiflow/tools/UIUtils;->context:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x10102eb

    aput v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 312
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 313
    .local v1, ret:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 314
    return v1
.end method

.method public static getDM()Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method public static getDensity()F
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getHeight()I
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getLeftBottomPoint()Landroid/graphics/PointF;
    .locals 4

    .prologue
    const v3, 0x3db851ec

    .line 70
    new-instance v0, Landroid/graphics/PointF;

    sget-object v1, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    add-float/2addr v1, v3

    sget-object v2, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static getLeftPoint()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x41a0

    sget-object v2, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static getRightBottomPoint()Landroid/graphics/PointF;
    .locals 4

    .prologue
    const v3, 0x3db851ec

    .line 75
    new-instance v0, Landroid/graphics/PointF;

    sget-object v1, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    add-float/2addr v1, v3

    sget-object v2, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static getRightPoint()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Landroid/graphics/PointF;

    sget-object v1, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, v1, -0x14

    int-to-float v1, v1

    sget-object v2, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static getStatusbarHeight(Landroid/app/Activity;)I
    .locals 6
    .parameter "activity"

    .prologue
    .line 92
    const/4 v4, 0x0

    .line 93
    .local v4, statusHeight:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 94
    .local v3, localRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 96
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 97
    if-nez v4, :cond_0

    .line 99
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 101
    .local v1, localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 102
    .local v2, localObject:Ljava/lang/Object;
    const-string v5, "status_bar_height"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 105
    .local v0, i5:I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 111
    .end local v0           #i5:I
    .end local v1           #localClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #localObject:Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 107
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static getWidth()I
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static initDisplayMetrics(Landroid/content/Context;Landroid/view/WindowManager;Z)V
    .locals 2
    .parameter "ctx"
    .parameter "wm"
    .parameter "isFollowSystemBackground"

    .prologue
    .line 33
    sget-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 34
    sput-object p0, Lcom/inveno/newpiflow/tools/UIUtils;->context:Landroid/content/Context;

    .line 37
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    .line 38
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sget-object v1, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 39
    sput-boolean p2, Lcom/inveno/newpiflow/tools/UIUtils;->followSystemBackground:Z

    .line 40
    return-void
.end method

.method public static isFollowSystemBackground()Z
    .locals 1

    .prologue
    .line 318
    sget-boolean v0, Lcom/inveno/newpiflow/tools/UIUtils;->followSystemBackground:Z

    return v0
.end method

.method public static isScreenCenter(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, ret:Z
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget-object v2, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x19

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sget-object v2, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x19

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 58
    const/4 v0, 0x0

    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget-object v2, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x19

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 61
    const/4 v0, 0x0

    .line 63
    :cond_2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sget-object v2, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x19

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 64
    const/4 v0, 0x0

    .line 66
    :cond_3
    return v0
.end method

.method public static isTouchLeft(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget-object v1, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeListViewFullSize(Landroid/widget/ListView;I)V
    .locals 5
    .parameter "lv"
    .parameter "itemHeight"

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 289
    .local v2, itemCount:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    .line 290
    .local v0, divider:I
    add-int v4, p1, v0

    mul-int v1, v4, v2

    .line 291
    .local v1, height:I
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 292
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    return-void
.end method

.method public static pxToScaledPx(I)F
    .locals 2
    .parameter "px"

    .prologue
    .line 132
    sget-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 133
    const/high16 v0, -0x4080

    .line 135
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p0

    sget-object v1, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static scaledPxToPx(F)I
    .locals 1
    .parameter "scaledPx"

    .prologue
    .line 139
    sget-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    .line 140
    const/4 v0, -0x1

    .line 142
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static setActivityPercentX(Landroid/app/Activity;F)V
    .locals 3
    .parameter "a"
    .parameter "percent"

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 199
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 201
    return-void
.end method

.method public static setActivityPercentY(Landroid/app/Activity;F)V
    .locals 3
    .parameter "a"
    .parameter "percent"

    .prologue
    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 205
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 207
    return-void
.end method

.method public static setActivitySizePos(Landroid/app/Activity;IIII)V
    .locals 2
    .parameter "activity"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 117
    .local v0, p:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 118
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 119
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 120
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 122
    return-void
.end method

.method public static setActivitySizeX(Landroid/app/Activity;I)V
    .locals 2
    .parameter "a"
    .parameter "size"

    .prologue
    .line 186
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 187
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 189
    return-void
.end method

.method public static setActivitySizeY(Landroid/app/Activity;I)V
    .locals 2
    .parameter "a"
    .parameter "size"

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 193
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 195
    return-void
.end method

.method public static setFollowSystemBackground(Z)V
    .locals 0
    .parameter "isFollowSystemBackground"

    .prologue
    .line 323
    sput-boolean p0, Lcom/inveno/newpiflow/tools/UIUtils;->followSystemBackground:Z

    .line 324
    return-void
.end method

.method public static setViewMarginPercent(Landroid/view/View;FFFF)V
    .locals 4
    .parameter "v"
    .parameter "marginLeft"
    .parameter "marginTop"
    .parameter "marginRight"
    .parameter "marginBottom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x42c8

    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 251
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 252
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 253
    .local v1, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 254
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 255
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 256
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p4

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 257
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    return-void

    .line 259
    .end local v1           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "exception_not_margin_layout_param"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static setViewMarginSize(Landroid/view/View;IIII)V
    .locals 4
    .parameter "v"
    .parameter "marginLeft"
    .parameter "marginTop"
    .parameter "marginRight"
    .parameter "marginBottom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 266
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 267
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 268
    .local v1, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 269
    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 270
    iput p3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 271
    iput p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 272
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    return-void

    .line 274
    .end local v1           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "exception_not_margin_layout_param"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static setViewPaddingPercent(Landroid/view/View;FFFF)V
    .locals 6
    .parameter "v"
    .parameter "paddingLeft"
    .parameter "paddingTop"
    .parameter "paddingRight"
    .parameter "paddingBottom"

    .prologue
    const/high16 v5, 0x42c8

    .line 280
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    div-float/2addr v4, v5

    float-to-int v1, v4

    .line 281
    .local v1, pLeft:I
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 282
    .local v3, pTop:I
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 283
    .local v2, pRight:I
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p4

    div-float/2addr v4, v5

    float-to-int v0, v4

    .line 284
    .local v0, pBottom:I
    invoke-virtual {p0, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 285
    return-void
.end method

.method public static setViewPercentX(Landroid/view/View;F)V
    .locals 3
    .parameter "v"
    .parameter "percent"

    .prologue
    .line 222
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 223
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 224
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    return-void
.end method

.method public static setViewPercentXByFrame(Landroid/view/View;FF)V
    .locals 3
    .parameter "v"
    .parameter "percent"
    .parameter "frameXPercent"

    .prologue
    const/high16 v2, 0x42c8

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 236
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 237
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    return-void
.end method

.method public static setViewPercentY(Landroid/view/View;F)V
    .locals 3
    .parameter "v"
    .parameter "percent"

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 229
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    return-void
.end method

.method public static setViewPercentYByFrame(Landroid/view/View;FF)V
    .locals 3
    .parameter "v"
    .parameter "percent"
    .parameter "frameYPercent"

    .prologue
    const/high16 v2, 0x42c8

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 243
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-static {}, Lcom/inveno/newpiflow/tools/UIUtils;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 244
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    return-void
.end method

.method public static setViewSizeX(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "size"

    .prologue
    .line 210
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 211
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 212
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    return-void
.end method

.method public static setViewSizeY(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "size"

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 217
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 218
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    return-void
.end method

.method public static touchInDialog(Landroid/app/Activity;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "activity"
    .parameter "e"

    .prologue
    .line 44
    const/16 v1, 0x8

    .line 45
    .local v1, leftW:I
    sget-object v4, Lcom/inveno/newpiflow/tools/UIUtils;->dm:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v2, v4, v1

    .line 46
    .local v2, rightW:I
    const/4 v3, 0x0

    .line 47
    .local v3, topH:I
    const/16 v0, 0x1c2

    .line 48
    .local v0, bottomH:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    int-to-float v5, v2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v3

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
