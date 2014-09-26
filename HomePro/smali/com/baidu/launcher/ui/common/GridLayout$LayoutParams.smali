.class public Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final DEFAULT_COLUMN:I = -0x80000000

.field private static final DEFAULT_HEIGHT:I = -0x2

.field private static final DEFAULT_MARGIN:I = -0x80000000

.field private static final DEFAULT_ROW:I = -0x80000000

.field private static final DEFAULT_SPAN:Lcom/baidu/launcher/ui/common/GridLayout$Interval; = null

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_SPAN_SIZE:I = 0x0

.field private static final DEFAULT_WIDTH:I = -0x2


# instance fields
.field public columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

.field public rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1714
    new-instance v0, Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    const/high16 v1, -0x8000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;-><init>(II)V

    sput-object v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->DEFAULT_SPAN:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    .line 1715
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->DEFAULT_SPAN:Lcom/baidu/launcher/ui/common/GridLayout$Interval;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/GridLayout$Interval;->size()I

    move-result v0

    sput v0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1760
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    sget-object v1, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    invoke-direct {p0, v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;-><init>(Lcom/baidu/launcher/ui/common/GridLayout$Spec;Lcom/baidu/launcher/ui/common/GridLayout$Spec;)V

    .line 1761
    return-void
.end method

.method private constructor <init>(IIIIIILcom/baidu/launcher/ui/common/GridLayout$Spec;Lcom/baidu/launcher/ui/common/GridLayout$Spec;)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "rowSpec"
    .parameter "columnSpec"

    .prologue
    .line 1736
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1722
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1728
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1737
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 1738
    iput-object p7, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1739
    iput-object p8, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1740
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1797
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1722
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1728
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1798
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1799
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1800
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 1769
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1722
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1728
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1770
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 1776
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1722
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1728
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1777
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;)V
    .locals 1
    .parameter "that"

    .prologue
    .line 1783
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1722
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1728
    sget-object v0, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->UNDEFINED:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1784
    iget-object v0, p1, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1785
    iget-object v0, p1, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1786
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/ui/common/GridLayout$Spec;Lcom/baidu/launcher/ui/common/GridLayout$Spec;)V
    .locals 9
    .parameter "rowSpec"
    .parameter "columnSpec"

    .prologue
    const/4 v1, -0x2

    const/high16 v3, -0x8000

    .line 1751
    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;-><init>(IIIIIILcom/baidu/launcher/ui/common/GridLayout$Spec;Lcom/baidu/launcher/ui/common/GridLayout$Spec;)V

    .line 1754
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1819
    return-void
.end method

.method private reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1815
    return-void
.end method


# virtual methods
.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2
    .parameter "attributes"
    .parameter "widthAttr"
    .parameter "heightAttr"

    .prologue
    const/4 v1, -0x2

    .line 1836
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->width:I

    .line 1837
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->height:I

    .line 1838
    return-void
.end method

.method final setColumnSpecSpan(Lcom/baidu/launcher/ui/common/GridLayout$Interval;)V
    .locals 1
    .parameter "span"

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->copyWriteSpan(Lcom/baidu/launcher/ui/common/GridLayout$Interval;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1846
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .parameter "gravity"

    .prologue
    .line 1830
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getAlignment(IZ)Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->copyWriteAlignment(Lcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1831
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/baidu/launcher/ui/common/GridLayout;->getAlignment(IZ)Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->copyWriteAlignment(Lcom/baidu/launcher/ui/common/GridLayout$Alignment;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->columnSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1832
    return-void
.end method

.method final setRowSpecSpan(Lcom/baidu/launcher/ui/common/GridLayout$Interval;)V
    .locals 1
    .parameter "span"

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->copyWriteSpan(Lcom/baidu/launcher/ui/common/GridLayout$Interval;)Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$LayoutParams;->rowSpec:Lcom/baidu/launcher/ui/common/GridLayout$Spec;

    .line 1842
    return-void
.end method
