.class public Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PagedViewCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/PagedViewCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public animating:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public destinationX:I

.field public destinationY:I

.field public isDragging:Z

.field public itemIndex:I

.field private mTag:Ljava/lang/Object;

.field public moveStep:I

.field public originalX:I

.field public originalY:I

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 583
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 578
    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->animating:Z

    .line 584
    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 585
    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 586
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v0, -0x1

    .line 609
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 578
    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->animating:Z

    .line 610
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 611
    iput p2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 612
    iput p3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 613
    iput p4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 614
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 1
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"
    .parameter "intemIndex"

    .prologue
    const/4 v0, -0x1

    .line 617
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 578
    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->animating:Z

    .line 618
    iput p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 619
    iput p2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 620
    iput p3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 621
    iput p4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 622
    iput p5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 623
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 589
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 578
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->animating:Z

    .line 590
    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 591
    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 592
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    .line 595
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->animating:Z

    .line 596
    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 597
    iput v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 598
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 578
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->itemIndex:I

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->animating:Z

    .line 602
    iget v0, p1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 603
    iget v0, p1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 604
    iget v0, p1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 605
    iget v0, p1, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 606
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 647
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    .line 648
    return-void
.end method

.method public setup(IIIIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    .line 628
    iget v0, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 629
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 630
    .local v1, myCellVSpan:I
    iget v2, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 631
    .local v2, myCellX:I
    iget v3, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 633
    .local v3, myCellY:I
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->width:I

    .line 635
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->height:I

    .line 638
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->x:I

    .line 639
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    iget v5, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->y:I

    .line 640
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/common/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
