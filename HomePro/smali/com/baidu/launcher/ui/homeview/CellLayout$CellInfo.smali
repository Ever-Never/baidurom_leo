.class public final Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    }
.end annotation


# instance fields
.field public cell:Landroid/view/View;

.field public cellX:I

.field public cellY:I

.field final current:Landroid/graphics/Rect;

.field maxVacantSpanX:I

.field maxVacantSpanXSpanY:I

.field maxVacantSpanY:I

.field maxVacantSpanYSpanX:I

.field public screen:I

.field public spanX:I

.field public spanY:I

.field final vacantCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;",
            ">;"
        }
    .end annotation
.end field

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1567
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 1572
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->current:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public clearVacantCells()V
    .locals 4

    .prologue
    .line 1575
    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 1576
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1578
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1580
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1581
    return-void
.end method

.method public findCellForSpan([III)Z
    .locals 1
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1615
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->findCellForSpan([IIIZ)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([IIIZ)Z
    .locals 8
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "clear"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1619
    iget-object v4, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->vacantCells:Ljava/util/ArrayList;

    .line 1620
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1622
    .local v1, count:I
    const/4 v2, 0x0

    .line 1624
    .local v2, found:Z
    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanX:I

    if-lt v5, p2, :cond_0

    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->spanY:I

    if-lt v5, p3, :cond_0

    .line 1625
    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellX:I

    aput v5, p1, v6

    .line 1626
    iget v5, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellY:I

    aput v5, p1, v7

    .line 1627
    const/4 v2, 0x1

    .line 1631
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1632
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    .line 1633
    .local v0, cell:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanX:I

    if-ne v5, p2, :cond_4

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanY:I

    if-ne v5, p3, :cond_4

    .line 1634
    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 1635
    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 1636
    const/4 v2, 0x1

    .line 1642
    .end local v0           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 1643
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;

    .line 1644
    .restart local v0       #cell:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanX:I

    if-lt v5, p2, :cond_5

    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->spanY:I

    if-lt v5, p3, :cond_5

    .line 1645
    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellX:I

    aput v5, p1, v6

    .line 1646
    iget v5, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;->cellY:I

    aput v5, p1, v7

    .line 1647
    const/4 v2, 0x1

    .line 1652
    .end local v0           #cell:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->clearVacantCells()V

    .line 1654
    :cond_3
    return v2

    .line 1631
    .restart local v0       #cell:Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo$VacantCell;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1642
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public findVacantCellsFromOccupied([ZII)V
    .locals 8
    .parameter "occupied"
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    const/high16 v1, -0x8000

    .line 1584
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellX:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellY:I

    if-gez v0, :cond_1

    .line 1585
    :cond_0
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanXSpanY:I

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanX:I

    .line 1586
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanYSpanX:I

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->maxVacantSpanY:I

    .line 1587
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->clearVacantCells()V

    .line 1598
    :goto_0
    return-void

    .line 1591
    :cond_1
    filled-new-array {p2, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    .line 1592
    .local v5, unflattened:[[Z
    const/4 v7, 0x0

    .local v7, y:I
    :goto_1
    if-ge v7, p3, :cond_3

    .line 1593
    const/4 v6, 0x0

    .local v6, x:I
    :goto_2
    if-ge v6, p2, :cond_2

    .line 1594
    aget-object v0, v5, v6

    mul-int v1, v7, p2

    add-int/2addr v1, v6

    aget-boolean v1, p1, v1

    aput-boolean v1, v0, v7

    .line 1593
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1592
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1597
    .end local v6           #x:I
    :cond_3
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellX:I

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellY:I

    move-object v0, p0

    move v3, p2

    move v4, p3

    #calls: Lcom/baidu/launcher/ui/homeview/CellLayout;->findIntersectingVacantCells(Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;IIII[[Z)V
    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/ui/homeview/CellLayout;->access$300(Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;IIII[[Z)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell[view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
