.class public Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

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

.field dropped:Z

.field public isDragging:Z

.field public isLockedToGrid:Z

.field regenerateId:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field public x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .parameter "cellX"
    .parameter "cellY"
    .parameter "cellHSpan"
    .parameter "cellVSpan"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1477
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1428
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1462
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->canReorder:Z

    .line 1478
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    .line 1479
    iput p2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    .line 1480
    iput p3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    .line 1481
    iput p4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    .line 1482
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 1465
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1428
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1462
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->canReorder:Z

    .line 1466
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    .line 1467
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    .line 1468
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    .line 1471
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1428
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1462
    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->canReorder:Z

    .line 1472
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    .line 1473
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    .line 1474
    return-void
.end method


# virtual methods
.method public setup(IIIIII)V
    .locals 6
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "widthGap"
    .parameter "heightGap"
    .parameter "hStartPadding"
    .parameter "vStartPadding"

    .prologue
    .line 1486
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v4, :cond_0

    .line 1487
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellHSpan:I

    .line 1488
    .local v0, myCellHSpan:I
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellVSpan:I

    .line 1489
    .local v1, myCellVSpan:I
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_1

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellX:I

    .line 1490
    .local v2, myCellX:I
    :goto_0
    iget-boolean v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_2

    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->tmpCellY:I

    .line 1492
    .local v3, myCellY:I
    :goto_1
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->width:I

    .line 1494
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->height:I

    .line 1497
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    add-int/2addr v4, p5

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->x:I

    .line 1498
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    add-int/2addr v4, p6

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->y:I

    .line 1500
    .end local v0           #myCellHSpan:I
    .end local v1           #myCellVSpan:I
    .end local v2           #myCellX:I
    .end local v3           #myCellY:I
    :cond_0
    return-void

    .line 1489
    .restart local v0       #myCellHSpan:I
    .restart local v1       #myCellVSpan:I
    :cond_1
    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellX:I

    goto :goto_0

    .line 1490
    .restart local v2       #myCellX:I
    :cond_2
    iget v3, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;->cellY:I

    goto :goto_1
.end method
