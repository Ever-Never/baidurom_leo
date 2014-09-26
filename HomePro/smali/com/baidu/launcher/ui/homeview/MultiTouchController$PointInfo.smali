.class public Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointInfo"
.end annotation


# instance fields
.field private action:I

.field private angle:F

.field private angleIsCalculated:Z

.field private diameter:F

.field private diameterIsCalculated:Z

.field private diameterSq:F

.field private diameterSqIsCalculated:Z

.field private dx:F

.field private dy:F

.field private eventTime:J

.field private isDown:Z

.field private isMultiTouch:Z

.field private numPoints:I

.field private pointerIdxs:[I

.field private pressureMid:F

.field private pressures:[F

.field private xMid:F

.field private xs:[F

.field private yMid:F

.field private ys:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xs:[F

    .line 521
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->ys:[F

    .line 522
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pressures:[F

    .line 523
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pointerIdxs:[I

    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 517
    iget-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->eventTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;I[F[F[F[IIZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 517
    invoke-direct/range {p0 .. p9}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->set(I[F[F[F[IIZJ)V

    return-void
.end method

.method private julery_isqrt(I)I
    .locals 6
    .parameter "val"

    .prologue
    .line 634
    const/4 v3, 0x0

    .local v3, g:I
    const v0, 0x8000

    .local v0, b:I
    const/16 v1, 0xf

    .local v1, bshft:I
    move v2, v1

    .line 636
    .end local v1           #bshft:I
    .local v2, bshft:I
    :goto_0
    shl-int/lit8 v5, v3, 0x1

    add-int/2addr v5, v0

    add-int/lit8 v1, v2, -0x1

    .end local v2           #bshft:I
    .restart local v1       #bshft:I
    shl-int v4, v5, v2

    .local v4, temp:I
    if-lt p1, v4, :cond_0

    .line 637
    add-int/2addr v3, v0

    .line 638
    sub-int/2addr p1, v4

    .line 640
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_1

    .line 641
    return v3

    :cond_1
    move v2, v1

    .end local v1           #bshft:I
    .restart local v2       #bshft:I
    goto :goto_0
.end method

.method private set(I[F[F[F[IIZJ)V
    .locals 6
    .parameter "numPoints"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "pointerIdxs"
    .parameter "action"
    .parameter "isDown"
    .parameter "eventTime"

    .prologue
    const/high16 v5, 0x3f00

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 553
    iput-wide p8, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->eventTime:J

    .line 554
    iput p6, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->action:I

    .line 555
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->numPoints:I

    .line 556
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xs:[F

    aget v4, p2, v0

    aput v4, v1, v0

    .line 558
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->ys:[F

    aget v4, p3, v0

    aput v4, v1, v0

    .line 559
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pressures:[F

    aget v4, p4, v0

    aput v4, v1, v0

    .line 560
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pointerIdxs:[I

    aget v4, p5, v0

    aput v4, v1, v0

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_0
    iput-boolean p7, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isDown:Z

    .line 563
    const/4 v1, 0x2

    if-lt p1, v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch:Z

    .line 565
    iget-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v1, :cond_2

    .line 566
    aget v1, p2, v3

    aget v4, p2, v2

    add-float/2addr v1, v4

    mul-float/2addr v1, v5

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xMid:F

    .line 567
    aget v1, p3, v3

    aget v4, p3, v2

    add-float/2addr v1, v4

    mul-float/2addr v1, v5

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->yMid:F

    .line 568
    aget v1, p4, v3

    aget v4, p4, v2

    add-float/2addr v1, v4

    mul-float/2addr v1, v5

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pressureMid:F

    .line 569
    aget v1, p2, v2

    aget v4, p2, v3

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dx:F

    .line 570
    aget v1, p3, v2

    aget v2, p3, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dy:F

    .line 580
    :goto_2
    iput-boolean v3, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iput-boolean v3, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iput-boolean v3, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 581
    return-void

    :cond_1
    move v1, v3

    .line 563
    goto :goto_1

    .line 574
    :cond_2
    aget v1, p2, v3

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xMid:F

    .line 575
    aget v1, p3, v3

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->yMid:F

    .line 576
    aget v1, p4, v3

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pressureMid:F

    .line 577
    const/4 v1, 0x0

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dy:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dx:F

    goto :goto_2
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->action:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 778
    iget-wide v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->eventTime:J

    return-wide v0
.end method

.method public getMultiTouchAngle()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 692
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->angleIsCalculated:Z

    if-nez v0, :cond_0

    .line 693
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-nez v0, :cond_1

    .line 694
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->angle:F

    .line 697
    :goto_0
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->angleIsCalculated:Z

    .line 699
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->angle:F

    return v0

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->ys:[F

    aget v0, v0, v4

    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->ys:[F

    aget v1, v1, v5

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xs:[F

    aget v2, v2, v4

    iget-object v3, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xs:[F

    aget v3, v3, v5

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->angle:F

    goto :goto_0
.end method

.method public getMultiTouchDiameter()F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 661
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    if-nez v2, :cond_1

    .line 662
    iget-boolean v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-nez v2, :cond_2

    .line 663
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameter:F

    .line 680
    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    .line 682
    :cond_1
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameter:F

    return v1

    .line 670
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->getMultiTouchDiameterSq()F

    move-result v0

    .line 671
    .local v0, diamSq:F
    cmpl-float v2, v0, v1

    if-nez v2, :cond_4

    :goto_1
    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameter:F

    .line 675
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameter:F

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dx:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 676
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dx:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameter:F

    .line 677
    :cond_3
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameter:F

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dy:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 678
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dy:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameter:F

    goto :goto_0

    .line 671
    :cond_4
    const/high16 v1, 0x4380

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->julery_isqrt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4180

    div-float/2addr v1, v2

    goto :goto_1
.end method

.method public getMultiTouchDiameterSq()F
    .locals 3

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    if-nez v0, :cond_0

    .line 650
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dx:F

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dx:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dy:F

    iget v2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dy:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterSq:F

    .line 651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 653
    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterSq:F

    return v0

    .line 650
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiTouchHeight()F
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dy:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiTouchWidth()F
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dx:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumTouchPoints()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->numPoints:I

    return v0
.end method

.method public getPointerIndices()[I
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pointerIdxs:[I

    return-object v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pressureMid:F

    return v0
.end method

.method public getPressures()[F
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pressures:[F

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xMid:F

    return v0
.end method

.method public getXs()[F
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xs:[F

    return-object v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->yMid:F

    return v0
.end method

.method public getYs()[F
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->ys:[F

    return-object v0
.end method

.method public isDown()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isDown:Z

    return v0
.end method

.method public isMultiTouch()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch:Z

    return v0
.end method

.method public set(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;)V
    .locals 3
    .parameter "other"

    .prologue
    .line 589
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->numPoints:I

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->numPoints:I

    .line 590
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->numPoints:I

    if-ge v0, v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xs:[F

    iget-object v2, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xs:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 592
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->ys:[F

    iget-object v2, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->ys:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 593
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pressures:[F

    iget-object v2, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pressures:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 594
    iget-object v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pointerIdxs:[I

    iget-object v2, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pointerIdxs:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_0
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xMid:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->xMid:F

    .line 597
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->yMid:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->yMid:F

    .line 598
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pressureMid:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->pressureMid:F

    .line 599
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dx:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dx:F

    .line 600
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dy:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->dy:F

    .line 601
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameter:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameter:F

    .line 602
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterSq:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterSq:F

    .line 603
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->angle:F

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->angle:F

    .line 604
    iget-boolean v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isDown:Z

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isDown:Z

    .line 605
    iget v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->action:I

    iput v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->action:I

    .line 606
    iget-boolean v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch:Z

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->isMultiTouch:Z

    .line 607
    iget-boolean v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterIsCalculated:Z

    .line 608
    iget-boolean v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->diameterSqIsCalculated:Z

    .line 609
    iget-boolean v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->angleIsCalculated:Z

    iput-boolean v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->angleIsCalculated:Z

    .line 610
    iget-wide v1, p1, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->eventTime:J

    iput-wide v1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PointInfo;->eventTime:J

    .line 611
    return-void
.end method
