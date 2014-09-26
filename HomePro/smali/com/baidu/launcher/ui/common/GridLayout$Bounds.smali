.class Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2002
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2003
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->reset()V

    .line 2004
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/ui/common/GridLayout$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1997
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/view/View;Lcom/baidu/launcher/ui/common/GridLayout$Alignment;I)I
    .locals 2
    .parameter "c"
    .parameter "alignment"
    .parameter "size"

    .prologue
    .line 2027
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->before:I

    invoke-virtual {p2, p1, p3}, Lcom/baidu/launcher/ui/common/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected include(II)V
    .locals 1
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2013
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->before:I

    .line 2014
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->after:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->after:I

    .line 2015
    return-void
.end method

.method protected final include(Landroid/view/View;Lcom/baidu/launcher/ui/common/GridLayout$Spec;Lcom/baidu/launcher/ui/common/GridLayout;Lcom/baidu/launcher/ui/common/GridLayout$Axis;)V
    .locals 5
    .parameter "c"
    .parameter "spec"
    .parameter "gridLayout"
    .parameter "axis"

    .prologue
    .line 2031
    iget v3, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p2}, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->getFlexibility()I

    move-result v4

    and-int/2addr v3, v4

    iput v3, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->flexibility:I

    .line 2032
    iget-boolean v3, p4, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    invoke-virtual {p3, p1, v3}, Lcom/baidu/launcher/ui/common/GridLayout;->getMeasurementIncludingMargin(Landroid/view/View;Z)I

    move-result v2

    .line 2033
    .local v2, size:I
    iget-object v3, p2, Lcom/baidu/launcher/ui/common/GridLayout$Spec;->alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    iget-boolean v4, p4, Lcom/baidu/launcher/ui/common/GridLayout$Axis;->horizontal:Z

    invoke-virtual {p3, v3, v4}, Lcom/baidu/launcher/ui/common/GridLayout;->getAlignment(Lcom/baidu/launcher/ui/common/GridLayout$Alignment;Z)Lcom/baidu/launcher/ui/common/GridLayout$Alignment;

    move-result-object v0

    .line 2035
    .local v0, alignment:Lcom/baidu/launcher/ui/common/GridLayout$Alignment;
    invoke-virtual {v0, p1, v2}, Lcom/baidu/launcher/ui/common/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;I)I

    move-result v1

    .line 2036
    .local v1, before:I
    sub-int v3, v2, v1

    invoke-virtual {p0, v1, v3}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->include(II)V

    .line 2037
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 2007
    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->before:I

    .line 2008
    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->after:I

    .line 2009
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->flexibility:I

    .line 2010
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .parameter "min"

    .prologue
    .line 2018
    if-nez p1, :cond_0

    .line 2019
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->flexibility:I

    invoke-static {v0}, Lcom/baidu/launcher/ui/common/GridLayout;->canStretch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2020
    const v0, 0x186a0

    .line 2023
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->before:I

    iget v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->after:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->before:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->after:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
