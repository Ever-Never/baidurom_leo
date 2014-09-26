.class public Lcom/baidu/launcher/ui/common/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/common/GridLayout$Alignment;,
        Lcom/baidu/launcher/ui/common/GridLayout$Spec;,
        Lcom/baidu/launcher/ui/common/GridLayout$Interval;,
        Lcom/baidu/launcher/ui/common/GridLayout$Bounds;,
        Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;,
        Lcom/baidu/launcher/ui/common/GridLayout$Assoc;,
        Lcom/baidu/launcher/ui/common/GridLayout$MutableInt;,
        Lcom/baidu/launcher/ui/common/GridLayout$Arc;,
        Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;,
        Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    }
.end annotation


# static fields
.field public static final ALIGN_BOUNDS:I = 0x0

.field public static final ALIGN_MARGINS:I = 0x1

.field public static final BASELINE:Lcom/baidu/launcher/ui/common/GridLayout$Alignment; = null

.field public static final BOTTOM:Lcom/baidu/launcher/ui/common/GridLayout$Alignment; = null

.field private static final CAN_STRETCH:I = 0x2

.field public static final CENTER:Lcom/baidu/launcher/ui/common/GridLayout$Alignment; = null

.field static final DEBUG:Z = false

.field private static final DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final DEFAULT_COUNT:I = -0x80000000

.field private static final DEFAULT_ORDER_PRESERVED:Z = true

.field private static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final FILL:Lcom/baidu/launcher/ui/common/GridLayout$Alignment; = null

.field public static final HORIZONTAL:I = 0x0

.field private static final INFLEXIBLE:I = 0x0

.field private static final LEADING:Lcom/baidu/launcher/ui/common/GridLayout$Alignment; = null

.field public static final LEFT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment; = null

.field static final MAX_SIZE:I = 0x186a0

.field public static final MEASURED_STATE_MASK:I = -0x1000000

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000

.field static final PRF:I = 0x1

.field public static final RIGHT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment; = null

.field static final TAG:Ljava/lang/String; = null

.field public static final TOP:Lcom/baidu/launcher/ui/common/GridLayout$Alignment; = null

.field private static final TRAILING:Lcom/baidu/launcher/ui/common/GridLayout$Alignment; = null

.field public static final UNDEFINED:I = -0x80000000

.field static final UNDEFINED_ALIGNMENT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment; = null

.field public static final VERTICAL:I = 0x1


# instance fields
.field alignmentMode:I

.field defaultGap:I

.field final horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

.field layoutParamsValid:Z

.field orientation:I

.field paint:Landroid/graphics/Paint;

.field useDefaultMargins:Z

.field final verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    const-class v0, Lcom/baidu/launcher/ui/common/GridLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->TAG:Ljava/lang/String;

    .line 2344
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$1;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/GridLayout$1;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->UNDEFINED_ALIGNMENT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    .line 2350
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$2;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/GridLayout$2;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->LEADING:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    .line 2356
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$3;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/GridLayout$3;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->TRAILING:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    .line 2366
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->LEADING:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->TOP:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    .line 2372
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->TRAILING:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->BOTTOM:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    .line 2378
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->TRAILING:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->RIGHT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    .line 2384
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->LEADING:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->LEFT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    .line 2391
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$4;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/GridLayout$4;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->CENTER:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    .line 2404
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$5;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/GridLayout$5;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->BASELINE:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    .line 2454
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$6;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/GridLayout$6;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->FILL:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/common/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 268
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/common/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 233
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-direct {v0, p0, v2, v3}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;-><init>(Lcom/baidu/launcher/ui/common/GridLayout;ZLcom/baidu/launcher/ui/common/GridLayout$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    .line 234
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-direct {v0, p0, v1, v3}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;-><init>(Lcom/baidu/launcher/ui/common/GridLayout;ZLcom/baidu/launcher/ui/common/GridLayout$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    .line 235
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout;->layoutParamsValid:Z

    .line 236
    iput v1, p0, Lcom/baidu/launcher/ui/common/GridLayout;->orientation:I

    .line 237
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/common/GridLayout;->useDefaultMargins:Z

    .line 238
    iput v2, p0, Lcom/baidu/launcher/ui/common/GridLayout;->alignmentMode:I

    .line 241
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->paint:Landroid/graphics/Paint;

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->defaultGap:I

    .line 253
    return-void
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, a:[Ljava/lang/Object;,"[TT;"
    .local p1, b:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 537
    .local v0, result:[Ljava/lang/Object;,"[TT;"
    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1
    .parameter "flexibility"

    .prologue
    .line 2466
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static clip(Lcom/baidu/launcher/ui/common/GridLayout$Interval;ZI)I
    .locals 3
    .parameter "minorRange"
    .parameter "minorWasDefined"
    .parameter "count"

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->size()I

    move-result v1

    .line 634
    .local v1, size:I
    if-nez p2, :cond_0

    .line 638
    .end local v1           #size:I
    :goto_0
    return v1

    .line 637
    .restart local v1       #size:I
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 638
    .local v0, min:I
    :goto_1
    sub-int v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 637
    .end local v0           #min:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 8
    .parameter "graphics"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getPaddingLeft()I

    move-result v6

    .line 748
    .local v6, dx:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getPaddingTop()I

    move-result v7

    .line 749
    .local v7, dy:I
    add-int v0, v6, p2

    int-to-float v1, v0

    add-int v0, v7, p3

    int-to-float v2, v0

    add-int v0, v6, p4

    int-to-float v3, v0

    add-int v0, v7, p5

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 750
    return-void
.end method

.method private static drawRect(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 753
    int-to-float v1, p1

    int-to-float v2, p2

    add-int/lit8 v0, p3, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, p4, -0x1

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 754
    return-void
.end method

.method private static fits([IIII)Z
    .locals 3
    .parameter "a"
    .parameter "value"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 610
    array-length v2, p0

    if-le p3, v2, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v1

    .line 613
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 614
    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 618
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getAlignment(IZ)Lcom/baidu/launcher/ui/common/GridLayout$Alignment;
    .locals 4
    .parameter "gravity"
    .parameter "horizontal"

    .prologue
    .line 543
    if-eqz p1, :cond_0

    const/4 v1, 0x7

    .line 544
    .local v1, mask:I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 545
    .local v2, shift:I
    :goto_1
    and-int v3, p0, v1

    shr-int v0, v3, v2

    .line 546
    .local v0, flags:I
    packed-switch v0, :pswitch_data_0

    .line 556
    :pswitch_0
    sget-object v3, Lcom/baidu/launcher/ui/common/GridLayout;->UNDEFINED_ALIGNMENT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    :goto_2
    return-object v3

    .line 543
    .end local v0           #flags:I
    .end local v1           #mask:I
    .end local v2           #shift:I
    :cond_0
    const/16 v1, 0x70

    goto :goto_0

    .line 544
    .restart local v1       #mask:I
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 548
    .restart local v0       #flags:I
    .restart local v2       #shift:I
    :pswitch_1
    sget-object v3, Lcom/baidu/launcher/ui/common/GridLayout;->LEADING:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    goto :goto_2

    .line 550
    :pswitch_2
    sget-object v3, Lcom/baidu/launcher/ui/common/GridLayout;->TRAILING:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    goto :goto_2

    .line 552
    :pswitch_3
    sget-object v3, Lcom/baidu/launcher/ui/common/GridLayout;->FILL:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    goto :goto_2

    .line 554
    :pswitch_4
    sget-object v3, Lcom/baidu/launcher/ui/common/GridLayout;->CENTER:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    goto :goto_2

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 1
    .parameter "c"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 562
    instance-of v0, p1, Landroid/widget/Space;

    if-eqz v0, :cond_0

    .line 563
    const/4 v0, 0x0

    .line 565
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->defaultGap:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .parameter "c"
    .parameter "isAtEdge"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 569
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/baidu/launcher/ui/common/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    goto :goto_0
.end method

.method private getDefaultMarginValue(Landroid/view/View;Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;ZZ)I
    .locals 7
    .parameter "c"
    .parameter "p"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 573
    iget-boolean v5, p0, Lcom/baidu/launcher/ui/common/GridLayout;->useDefaultMargins:Z

    if-nez v5, :cond_0

    .line 581
    :goto_0
    return v4

    .line 576
    :cond_0
    if-eqz p3, :cond_2

    iget-object v3, p2, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 577
    .local v3, spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    .line 578
    .local v0, axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    :goto_2
    iget-object v2, v3, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 579
    .local v2, span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    if-eqz p4, :cond_5

    iget v5, v2, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    if-nez v5, :cond_4

    .line 581
    .local v1, isAtEdge:Z
    :cond_1
    :goto_3
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/baidu/launcher/ui/common/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v4

    goto :goto_0

    .line 576
    .end local v0           #axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    .end local v1           #isAtEdge:Z
    .end local v2           #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v3           #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_2
    iget-object v3, p2, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    goto :goto_1

    .line 577
    .restart local v3       #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    goto :goto_2

    .restart local v0       #axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    .restart local v2       #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    :cond_4
    move v1, v4

    .line 579
    goto :goto_3

    :cond_5
    iget v5, v2, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->max:I

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v6

    if-eq v5, v6, :cond_1

    move v1, v4

    goto :goto_3
.end method

.method private getLayoutParams1(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .locals 1
    .parameter "c"

    .prologue
    .line 718
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    return-object v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 7
    .parameter "view"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 593
    iget v5, p0, Lcom/baidu/launcher/ui/common/GridLayout;->alignmentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 594
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/common/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    .line 601
    :goto_0
    return v5

    .line 596
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    .line 597
    .local v0, axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v3

    .line 598
    .local v3, margins:[I
    :goto_2
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v2

    .line 599
    .local v2, lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    if-eqz p2, :cond_3

    iget-object v4, v2, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 600
    .local v4, spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :goto_3
    if-eqz p3, :cond_4

    iget-object v5, v4, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    iget v1, v5, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    .line 601
    .local v1, index:I
    :goto_4
    aget v5, v3, v1

    goto :goto_0

    .line 596
    .end local v0           #axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    .end local v1           #index:I
    .end local v2           #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .end local v3           #margins:[I
    .end local v4           #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    goto :goto_1

    .line 597
    .restart local v0       #axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    :cond_2
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v3

    goto :goto_2

    .line 599
    .restart local v2       #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .restart local v3       #margins:[I
    :cond_3
    iget-object v4, v2, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    goto :goto_3

    .line 600
    .restart local v4       #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_4
    iget-object v5, v4, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    iget v1, v5, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->max:I

    goto :goto_4
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .parameter "c"
    .parameter "horizontal"

    .prologue
    .line 922
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .parameter "child"
    .parameter "horizontal"

    .prologue
    .line 606
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/common/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private invalidateStructure()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->layoutParamsValid:Z

    .line 702
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->invalidateStructure()V

    .line 703
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->invalidateStructure()V

    .line 705
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->invalidateValues()V

    .line 706
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->invalidateValues()V

    .line 713
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->invalidateValues()V

    .line 715
    :cond_0
    return-void
.end method

.method static max2([II)I
    .locals 4
    .parameter "a"
    .parameter "valueIfEmpty"

    .prologue
    .line 527
    move v2, p1

    .line 528
    .local v2, result:I
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, p0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 529
    aget v3, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 531
    :cond_0
    return v2
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 4
    .parameter "child"
    .parameter "parentWidthSpec"
    .parameter "parentHeightSpec"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 814
    iget v2, p0, Lcom/baidu/launcher/ui/common/GridLayout;->mPaddingLeft:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/GridLayout;->mPaddingRight:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/baidu/launcher/ui/common/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2, v2, p4}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 816
    .local v1, childWidthSpec:I
    iget v2, p0, Lcom/baidu/launcher/ui/common/GridLayout;->mPaddingTop:I

    iget v3, p0, Lcom/baidu/launcher/ui/common/GridLayout;->mPaddingBottom:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/baidu/launcher/ui/common/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p3, v2, p5}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 818
    .local v0, childHeightSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 819
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 22
    .parameter "widthSpec"
    .parameter "heightSpec"
    .parameter "firstPass"

    .prologue
    .line 822
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildCount()I

    move-result v13

    .local v13, N:I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_7

    .line 823
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 824
    .local v3, c:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/common/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 825
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/ui/common/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v19

    .line 826
    .local v19, lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    if-eqz p3, :cond_2

    .line 827
    move-object/from16 v0, v19

    iget v6, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->width:I

    move-object/from16 v0, v19

    iget v7, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/baidu/launcher/ui/common/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 829
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/ui/common/GridLayout;->orientation:I

    if-nez v2, :cond_3

    const/16 v16, 0x1

    .line 830
    .local v16, horizontal:Z
    :goto_2
    if-eqz v16, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-object/from16 v21, v0

    .line 831
    .local v21, spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :goto_3
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    sget-object v4, Lcom/baidu/launcher/ui/common/GridLayout;->FILL:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    if-ne v2, v4, :cond_0

    .line 832
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    move-object/from16 v20, v0

    .line 833
    .local v20, span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    .line 834
    .local v14, axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    :goto_4
    invoke-virtual {v14}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    .line 835
    .local v18, locations:[I
    move-object/from16 v0, v20

    iget v2, v0, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->max:I

    aget v2, v18, v2

    move-object/from16 v0, v20

    iget v4, v0, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    aget v4, v18, v4

    sub-int v15, v2, v4

    .line 836
    .local v15, cellSize:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    sub-int v6, v15, v2

    .line 837
    .local v6, viewSize:I
    if-eqz v16, :cond_6

    .line 838
    move-object/from16 v0, v19

    iget v7, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/baidu/launcher/ui/common/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 829
    .end local v6           #viewSize:I
    .end local v14           #axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    .end local v15           #cellSize:I
    .end local v16           #horizontal:Z
    .end local v18           #locations:[I
    .end local v20           #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v21           #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 830
    .restart local v16       #horizontal:Z
    :cond_4
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-object/from16 v21, v0

    goto :goto_3

    .line 833
    .restart local v20       #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .restart local v21       #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    goto :goto_4

    .line 840
    .restart local v6       #viewSize:I
    .restart local v14       #axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    .restart local v15       #cellSize:I
    .restart local v18       #locations:[I
    :cond_6
    move-object/from16 v0, v19

    iget v11, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->width:I

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v10, p2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/baidu/launcher/ui/common/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 845
    .end local v3           #c:Landroid/view/View;
    .end local v6           #viewSize:I
    .end local v14           #axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    .end local v15           #cellSize:I
    .end local v16           #horizontal:Z
    .end local v18           #locations:[I
    .end local v19           #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .end local v20           #span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v21           #spec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :cond_7
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .parameter "a"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 622
    array-length v0, p0

    .line 623
    .local v0, length:I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 624
    return-void
.end method

.method private protect(I)I
    .locals 1
    .parameter "alignment"

    .prologue
    .line 918
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1
    :cond_0
    return p1
.end method

.method public static resolveSizeAndState(III)I
    .locals 4
    .parameter "size"
    .parameter "measureSpec"
    .parameter "childMeasuredState"

    .prologue
    .line 896
    move v0, p0

    .line 897
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 898
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 899
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 914
    :goto_0
    const/high16 v3, -0x100

    and-int/2addr v3, p2

    or-int/2addr v3, v0

    return v3

    .line 901
    :sswitch_0
    move v0, p0

    .line 902
    goto :goto_0

    .line 904
    :sswitch_1
    if-ge v2, p0, :cond_0

    .line 905
    const/high16 v3, 0x100

    or-int v0, v2, v3

    goto :goto_0

    .line 907
    :cond_0
    move v0, p0

    .line 909
    goto :goto_0

    .line 911
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 899
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private static setCellGroup(Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;IIII)V
    .locals 2
    .parameter "lp"
    .parameter "row"
    .parameter "rowSpan"
    .parameter "col"
    .parameter "colSpan"

    .prologue
    .line 627
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->setRowSpecSpan(Lcom/baidu/launcher/ui/common/GridLayout$Interval;)V

    .line 628
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->setColumnSpecSpan(Lcom/baidu/launcher/ui/common/GridLayout$Interval;)V

    .line 629
    return-void
.end method

.method public static spec(I)Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .locals 1
    .parameter "start"

    .prologue
    .line 2280
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/launcher/ui/common/GridLayout;->spec(II)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .locals 1
    .parameter "start"
    .parameter "size"

    .prologue
    .line 2268
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->UNDEFINED_ALIGNMENT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    invoke-static {p0, p1, v0}, Lcom/baidu/launcher/ui/common/GridLayout;->spec(IILcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .locals 6
    .parameter "start"
    .parameter "size"
    .parameter "alignment"

    .prologue
    .line 2241
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    const/high16 v1, -0x8000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/common/GridLayout$Spec;-><init>(ZIILcom/baidu/launcher/ui/common/GridLayout$Alignment;Lcom/baidu/launcher/ui/common/GridLayout$1;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static spec(ILcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .locals 1
    .parameter "start"
    .parameter "alignment"

    .prologue
    .line 2255
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/baidu/launcher/ui/common/GridLayout;->spec(IILcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method private validateLayoutParams()V
    .locals 21

    .prologue
    .line 643
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/ui/common/GridLayout;->orientation:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v5, 0x1

    .line 644
    .local v5, horizontal:Z
    :goto_0
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    .line 645
    .local v3, axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    :goto_1
    iget v0, v3, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->definedCount:I

    move/from16 v19, v0

    const/high16 v20, -0x8000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    iget v4, v3, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->definedCount:I

    .line 647
    .local v4, count:I
    :goto_2
    const/4 v8, 0x0

    .line 648
    .local v8, major:I
    const/4 v14, 0x0

    .line 649
    .local v14, minor:I
    new-array v13, v4, [I

    .line 651
    .local v13, maxSizes:[I
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildCount()I

    move-result v2

    .local v2, N:I
    :goto_3
    if-ge v6, v2, :cond_d

    .line 652
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getLayoutParams1(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v7

    .line 654
    .local v7, lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    if-eqz v5, :cond_6

    iget-object v11, v7, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 655
    .local v11, majorSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :goto_4
    iget-object v9, v11, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 656
    .local v9, majorRange:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    iget-boolean v12, v11, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->startDefined:Z

    .line 657
    .local v12, majorWasDefined:Z
    invoke-virtual {v9}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->size()I

    move-result v10

    .line 658
    .local v10, majorSpan:I
    if-eqz v12, :cond_0

    .line 659
    iget v8, v9, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    .line 662
    :cond_0
    if-eqz v5, :cond_7

    iget-object v0, v7, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-object/from16 v17, v0

    .line 663
    .local v17, minorSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    :goto_5
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 664
    .local v15, minorRange:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->startDefined:Z

    move/from16 v18, v0

    .line 665
    .local v18, minorWasDefined:Z
    move/from16 v0, v18

    invoke-static {v15, v0, v4}, Lcom/baidu/launcher/ui/common/GridLayout;->clip(Lcom/baidu/launcher/ui/common/GridLayout$Interval;ZI)I

    move-result v16

    .line 666
    .local v16, minorSpan:I
    if-eqz v18, :cond_1

    .line 667
    iget v14, v15, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    .line 670
    :cond_1
    if-eqz v4, :cond_b

    .line 672
    if-eqz v12, :cond_2

    if-nez v18, :cond_a

    .line 673
    :cond_2
    :goto_6
    add-int v19, v14, v16

    move/from16 v0, v19

    invoke-static {v13, v8, v14, v0}, Lcom/baidu/launcher/ui/common/GridLayout;->fits([IIII)Z

    move-result v19

    if-nez v19, :cond_a

    .line 674
    if-eqz v18, :cond_8

    .line 675
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 643
    .end local v2           #N:I
    .end local v3           #axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    .end local v4           #count:I
    .end local v5           #horizontal:Z
    .end local v6           #i:I
    .end local v7           #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .end local v8           #major:I
    .end local v9           #majorRange:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v10           #majorSpan:I
    .end local v11           #majorSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .end local v12           #majorWasDefined:Z
    .end local v13           #maxSizes:[I
    .end local v14           #minor:I
    .end local v15           #minorRange:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v16           #minorSpan:I
    .end local v17           #minorSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .end local v18           #minorWasDefined:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 644
    .restart local v5       #horizontal:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    goto :goto_1

    .line 645
    .restart local v3       #axis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 654
    .restart local v2       #N:I
    .restart local v4       #count:I
    .restart local v6       #i:I
    .restart local v7       #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .restart local v8       #major:I
    .restart local v13       #maxSizes:[I
    .restart local v14       #minor:I
    :cond_6
    iget-object v11, v7, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    goto :goto_4

    .line 662
    .restart local v9       #majorRange:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .restart local v10       #majorSpan:I
    .restart local v11       #majorSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .restart local v12       #majorWasDefined:Z
    :cond_7
    iget-object v0, v7, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-object/from16 v17, v0

    goto :goto_5

    .line 677
    .restart local v15       #minorRange:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .restart local v16       #minorSpan:I
    .restart local v17       #minorSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .restart local v18       #minorWasDefined:Z
    :cond_8
    add-int v19, v14, v16

    move/from16 v0, v19

    if-gt v0, v4, :cond_9

    .line 678
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 680
    :cond_9
    const/4 v14, 0x0

    .line 681
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 686
    :cond_a
    add-int v19, v14, v16

    add-int v20, v8, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v14, v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->procrusteanFill([IIII)V

    .line 689
    :cond_b
    if-eqz v5, :cond_c

    .line 690
    move/from16 v0, v16

    invoke-static {v7, v8, v10, v14, v0}, Lcom/baidu/launcher/ui/common/GridLayout;->setCellGroup(Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;IIII)V

    .line 695
    :goto_7
    add-int v14, v14, v16

    .line 651
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 692
    :cond_c
    move/from16 v0, v16

    invoke-static {v7, v14, v0, v8, v10}, Lcom/baidu/launcher/ui/common/GridLayout;->setCellGroup(Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;IIII)V

    goto :goto_7

    .line 697
    .end local v7           #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .end local v9           #majorRange:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v10           #majorSpan:I
    .end local v11           #majorSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .end local v12           #majorWasDefined:Z
    .end local v15           #minorRange:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v16           #minorSpan:I
    .end local v17           #minorSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .end local v18           #minorWasDefined:Z
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/GridLayout;->invalidateStructure()V

    .line 698
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->generateDefaultLayoutParams()Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 731
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 736
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 741
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final getAlignment(Lcom/baidu/launcher/ui/common/GridLayout$Alignment;Z)Lcom/baidu/launcher/ui/common/GridLayout$Alignment;
    .locals 1
    .parameter "alignment"
    .parameter "horizontal"

    .prologue
    .line 939
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout;->UNDEFINED_ALIGNMENT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    if-eq p1, v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lcom/baidu/launcher/ui/common/GridLayout;->LEFT:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/baidu/launcher/ui/common/GridLayout;->BASELINE:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    goto :goto_0
.end method

.method public getAlignmentMode()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->alignmentMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method final getLayoutParams(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .locals 1
    .parameter "c"

    .prologue
    .line 722
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->layoutParamsValid:Z

    if-nez v0, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->validateLayoutParams()V

    .line 724
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->layoutParamsValid:Z

    .line 726
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/common/GridLayout;->getLayoutParams1(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .parameter "view"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v0

    .line 586
    .local v0, lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v1, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->leftMargin:I

    .line 589
    .local v1, margin:I
    :goto_0
    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/baidu/launcher/ui/common/GridLayout;->getDefaultMarginValue(Landroid/view/View;Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;ZZ)I

    move-result v1

    .end local v1           #margin:I
    :cond_0
    return v1

    .line 586
    :cond_1
    iget v1, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_3
    iget v1, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .parameter "c"
    .parameter "horizontal"

    .prologue
    .line 926
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/common/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const/4 v0, 0x0

    .line 929
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->orientation:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->useDefaultMargins:Z

    return v0
.end method

.method public isColumnOrderPreserved()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method final isGone(Landroid/view/View;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 809
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRowOrderPreserved()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 758
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 802
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 50
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 959
    sub-int v38, p4, p2

    .line 960
    .local v38, targetWidth:I
    sub-int v37, p5, p3

    .line 962
    .local v37, targetHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getPaddingLeft()I

    move-result v30

    .line 963
    .local v30, paddingLeft:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getPaddingTop()I

    move-result v32

    .line 964
    .local v32, paddingTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getPaddingRight()I

    move-result v31

    .line 965
    .local v31, paddingRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getPaddingBottom()I

    move-result v29

    .line 967
    .local v29, paddingBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    move-object/from16 v48, v0

    sub-int v49, v38, v30

    sub-int v49, v49, v31

    invoke-virtual/range {v48 .. v49}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->layout(I)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    move-object/from16 v48, v0

    sub-int v49, v37, v32

    sub-int v49, v49, v29

    invoke-virtual/range {v48 .. v49}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->layout(I)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getLocations()[I

    move-result-object v20

    .line 971
    .local v20, hLocations:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getLocations()[I

    move-result-object v42

    .line 973
    .local v42, vLocations:[I
    const/16 v22, 0x0

    .local v22, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildCount()I

    move-result v3

    .local v3, N:I
    :goto_0
    move/from16 v0, v22

    if-ge v0, v3, :cond_3

    .line 974
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 975
    .local v7, c:Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/baidu/launcher/ui/common/GridLayout;->isGone(Landroid/view/View;)Z

    move-result v48

    if-eqz v48, :cond_0

    .line 973
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 976
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/baidu/launcher/ui/common/GridLayout;->getLayoutParams(Landroid/view/View;)Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;

    move-result-object v24

    .line 977
    .local v24, lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    move-object/from16 v0, v24

    iget-object v14, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 978
    .local v14, columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-object/from16 v36, v0

    .line 980
    .local v36, rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    iget-object v13, v14, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 981
    .local v13, colSpan:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->span:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    move-object/from16 v35, v0

    .line 983
    .local v35, rowSpan:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    iget v0, v13, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    move/from16 v48, v0

    aget v44, v20, v48

    .line 984
    .local v44, x1:I
    move-object/from16 v0, v35

    iget v0, v0, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->min:I

    move/from16 v48, v0

    aget v46, v42, v48

    .line 986
    .local v46, y1:I
    iget v0, v13, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->max:I

    move/from16 v48, v0

    aget v45, v20, v48

    .line 987
    .local v45, x2:I
    move-object/from16 v0, v35

    iget v0, v0, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->max:I

    move/from16 v48, v0

    aget v47, v42, v48

    .line 989
    .local v47, y2:I
    sub-int v11, v45, v44

    .line 990
    .local v11, cellWidth:I
    sub-int v10, v47, v46

    .line 992
    .local v10, cellHeight:I
    const/16 v48, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v7, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v28

    .line 993
    .local v28, pWidth:I
    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v7, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v27

    .line 995
    .local v27, pHeight:I
    iget-object v0, v14, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-object/from16 v48, v0

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/common/GridLayout;->getAlignment(Lcom/baidu/launcher/ui/common/GridLayout$Alignment;Z)Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-result-object v19

    .line 996
    .local v19, hAlign:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-object/from16 v48, v0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/common/GridLayout;->getAlignment(Lcom/baidu/launcher/ui/common/GridLayout$Alignment;Z)Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-result-object v41

    .line 1000
    .local v41, vAlign:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getGroupBounds()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;

    .line 1001
    .local v12, colBounds:Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getGroupBounds()Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;

    .line 1005
    .local v34, rowBounds:Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
    const/16 v48, 0x0

    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-virtual {v12, v0}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->size(Z)I

    move-result v49

    sub-int v49, v11, v49

    move-object/from16 v0, v19

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->protect(I)I

    move-result v8

    .line 1007
    .local v8, c2ax:I
    const/16 v48, 0x0

    const/16 v49, 0x1

    move-object/from16 v0, v34

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->size(Z)I

    move-result v49

    sub-int v49, v10, v49

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v48

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->protect(I)I

    move-result v9

    .line 1009
    .local v9, c2ay:I
    const/16 v48, 0x1

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Lcom/baidu/launcher/ui/common/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v23

    .line 1010
    .local v23, leftMargin:I
    const/16 v48, 0x0

    const/16 v49, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Lcom/baidu/launcher/ui/common/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v39

    .line 1011
    .local v39, topMargin:I
    const/16 v48, 0x1

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Lcom/baidu/launcher/ui/common/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v33

    .line 1012
    .local v33, rightMargin:I
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-direct {v0, v7, v1, v2}, Lcom/baidu/launcher/ui/common/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v6

    .line 1015
    .local v6, bottomMargin:I
    add-int v48, v23, v28

    add-int v26, v48, v33

    .line 1016
    .local v26, mWidth:I
    add-int v48, v39, v27

    add-int v25, v48, v6

    .line 1019
    .local v25, mHeight:I
    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v12, v7, v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->getOffset(Landroid/view/View;Lcom/baidu/launcher/ui/common/GridLayout$Alignment;I)I

    move-result v4

    .line 1020
    .local v4, a2vx:I
    move-object/from16 v0, v34

    move-object/from16 v1, v41

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->getOffset(Landroid/view/View;Lcom/baidu/launcher/ui/common/GridLayout$Alignment;I)I

    move-result v5

    .line 1022
    .local v5, a2vy:I
    add-int v48, v8, v4

    add-int v17, v48, v23

    .line 1023
    .local v17, dx:I
    add-int v48, v9, v5

    add-int v18, v48, v39

    .line 1025
    .local v18, dy:I
    add-int v48, v23, v33

    sub-int v11, v11, v48

    .line 1026
    add-int v48, v39, v6

    sub-int v10, v10, v48

    .line 1028
    const/16 v40, 0x1

    .line 1029
    .local v40, type:I
    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v40

    invoke-virtual {v0, v7, v1, v11, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;III)I

    move-result v43

    .line 1030
    .local v43, width:I
    move-object/from16 v0, v41

    move/from16 v1, v27

    move/from16 v2, v40

    invoke-virtual {v0, v7, v1, v10, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;III)I

    move-result v21

    .line 1032
    .local v21, height:I
    add-int v48, v30, v44

    add-int v15, v48, v17

    .line 1033
    .local v15, cx:I
    add-int v48, v32, v46

    add-int v16, v48, v18

    .line 1034
    .local v16, cy:I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v48

    move/from16 v0, v43

    move/from16 v1, v48

    if-ne v0, v1, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v48

    move/from16 v0, v21

    move/from16 v1, v48

    if-eq v0, v1, :cond_2

    .line 1035
    :cond_1
    const/high16 v48, 0x4000

    move/from16 v0, v43

    move/from16 v1, v48

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v48

    const/high16 v49, 0x4000

    move/from16 v0, v21

    move/from16 v1, v49

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v49

    move/from16 v0, v48

    move/from16 v1, v49

    invoke-virtual {v7, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1037
    :cond_2
    add-int v48, v15, v43

    add-int v49, v16, v21

    move/from16 v0, v16

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v7, v15, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1039
    .end local v4           #a2vx:I
    .end local v5           #a2vy:I
    .end local v6           #bottomMargin:I
    .end local v7           #c:Landroid/view/View;
    .end local v8           #c2ax:I
    .end local v9           #c2ay:I
    .end local v10           #cellHeight:I
    .end local v11           #cellWidth:I
    .end local v12           #colBounds:Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
    .end local v13           #colSpan:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v14           #columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .end local v15           #cx:I
    .end local v16           #cy:I
    .end local v17           #dx:I
    .end local v18           #dy:I
    .end local v19           #hAlign:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;
    .end local v21           #height:I
    .end local v23           #leftMargin:I
    .end local v24           #lp:Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
    .end local v25           #mHeight:I
    .end local v26           #mWidth:I
    .end local v27           #pHeight:I
    .end local v28           #pWidth:I
    .end local v33           #rightMargin:I
    .end local v34           #rowBounds:Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
    .end local v35           #rowSpan:Lcom/baidu/launcher/ui/common/GridLayout$Interval;
    .end local v36           #rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;
    .end local v39           #topMargin:I
    .end local v40           #type:I
    .end local v41           #vAlign:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;
    .end local v43           #width:I
    .end local v44           #x1:I
    .end local v45           #x2:I
    .end local v46           #y1:I
    .end local v47           #y2:I
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v8, 0x0

    .line 851
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->invalidateValues()V

    .line 853
    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v6}, Lcom/baidu/launcher/ui/common/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 858
    iget v6, p0, Lcom/baidu/launcher/ui/common/GridLayout;->orientation:I

    if-nez v6, :cond_0

    .line 859
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v6, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getMeasure(I)I

    move-result v5

    .line 860
    .local v5, width:I
    invoke-direct {p0, p1, p2, v8}, Lcom/baidu/launcher/ui/common/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 861
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v6, p2}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 868
    .local v1, height:I
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getPaddingRight()I

    move-result v7

    add-int v0, v6, v7

    .line 869
    .local v0, hPadding:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getPaddingBottom()I

    move-result v7

    add-int v4, v6, v7

    .line 871
    .local v4, vPadding:I
    add-int v6, v0, v5

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 872
    .local v3, measuredWidth:I
    add-int v6, v4, v1

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->getSuggestedMinimumHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 874
    .local v2, measuredHeight:I
    invoke-static {v3, p1, v8}, Lcom/baidu/launcher/ui/common/GridLayout;->resolveSizeAndState(III)I

    move-result v6

    invoke-static {v2, p2, v8}, Lcom/baidu/launcher/ui/common/GridLayout;->resolveSizeAndState(III)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/baidu/launcher/ui/common/GridLayout;->setMeasuredDimension(II)V

    .line 877
    return-void

    .line 863
    .end local v0           #hPadding:I
    .end local v1           #height:I
    .end local v2           #measuredHeight:I
    .end local v3           #measuredWidth:I
    .end local v4           #vPadding:I
    .end local v5           #width:I
    :cond_0
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v6, p2}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 864
    .restart local v1       #height:I
    invoke-direct {p0, p1, p2, v8}, Lcom/baidu/launcher/ui/common/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 865
    iget-object v6, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v6, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->getMeasure(I)I

    move-result v5

    .restart local v5       #width:I
    goto :goto_0
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 934
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 935
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->invalidateValues()V

    .line 936
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .parameter "alignmentMode"

    .prologue
    .line 448
    iput p1, p0, Lcom/baidu/launcher/ui/common/GridLayout;->alignmentMode:I

    .line 449
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->requestLayout()V

    .line 450
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .parameter "columnCount"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->setCount(I)V

    .line 367
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->invalidateStructure()V

    .line 368
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->requestLayout()V

    .line 369
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .parameter "columnOrderPreserved"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->horizontalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 520
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->invalidateStructure()V

    .line 521
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->requestLayout()V

    .line 522
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 298
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->orientation:I

    if-eq v0, p1, :cond_0

    .line 299
    iput p1, p0, Lcom/baidu/launcher/ui/common/GridLayout;->orientation:I

    .line 300
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->invalidateStructure()V

    .line 301
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->requestLayout()V

    .line 303
    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .parameter "rowCount"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->setCount(I)V

    .line 334
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->invalidateStructure()V

    .line 335
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->requestLayout()V

    .line 336
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .parameter "rowOrderPreserved"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout;->verticalAxis:Lcom/baidu/launcher/ui/common/GridLayout$Axis;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 484
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->invalidateStructure()V

    .line 485
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->requestLayout()V

    .line 486
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .parameter "useDefaultMargins"

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/common/GridLayout;->useDefaultMargins:Z

    .line 413
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout;->requestLayout()V

    .line 414
    return-void
.end method
