.class public Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;
.super Ljava/lang/Object;
.source "MultiTouchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/MultiTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionAndScale"
.end annotation


# instance fields
.field private angle:F

.field private scale:F

.field private scaleX:F

.field private scaleY:F

.field private updateAngle:Z

.field private updateScale:Z

.field private updateScaleXY:Z

.field private xOff:F

.field private yOff:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScale:Z

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateAngle:Z

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 786
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scale:F

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 786
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->xOff:F

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 786
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->yOff:F

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 786
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scaleX:F

    return v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 786
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scaleY:F

    return v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 786
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->angle:F

    return v0
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateAngle:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->angle:F

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 839
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScale:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scale:F

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scaleX:F

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scaleY:F

    goto :goto_0
.end method

.method public getXOff()F
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->xOff:F

    return v0
.end method

.method public getYOff()F
    .locals 1

    .prologue
    .line 835
    iget v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->yOff:F

    return v0
.end method

.method protected set(FFFFFF)V
    .locals 3
    .parameter "xOff"
    .parameter "yOff"
    .parameter "scale"
    .parameter "scaleX"
    .parameter "scaleY"
    .parameter "angle"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    .line 822
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->xOff:F

    .line 823
    iput p2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->yOff:F

    .line 824
    cmpl-float v1, p3, v2

    if-nez v1, :cond_0

    move p3, v0

    .end local p3
    :cond_0
    iput p3, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scale:F

    .line 825
    cmpl-float v1, p4, v2

    if-nez v1, :cond_1

    move p4, v0

    .end local p4
    :cond_1
    iput p4, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scaleX:F

    .line 826
    cmpl-float v1, p5, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scaleY:F

    .line 827
    iput p6, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->angle:F

    .line 828
    return-void

    :cond_2
    move v0, p5

    .line 826
    goto :goto_0
.end method

.method public set(FFZFZFFZF)V
    .locals 3
    .parameter "xOff"
    .parameter "yOff"
    .parameter "updateScale"
    .parameter "scale"
    .parameter "updateScaleXY"
    .parameter "scaleX"
    .parameter "scaleY"
    .parameter "updateAngle"
    .parameter "angle"

    .prologue
    const/high16 v0, 0x3f80

    const/4 v2, 0x0

    .line 805
    iput p1, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->xOff:F

    .line 806
    iput p2, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->yOff:F

    .line 807
    iput-boolean p3, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScale:Z

    .line 808
    cmpl-float v1, p4, v2

    if-nez v1, :cond_0

    move p4, v0

    .end local p4
    :cond_0
    iput p4, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scale:F

    .line 809
    iput-boolean p5, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateScaleXY:Z

    .line 810
    cmpl-float v1, p6, v2

    if-nez v1, :cond_1

    move p6, v0

    .end local p6
    :cond_1
    iput p6, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scaleX:F

    .line 811
    cmpl-float v1, p7, v2

    if-nez v1, :cond_2

    :goto_0
    iput v0, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->scaleY:F

    .line 812
    iput-boolean p8, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->updateAngle:Z

    .line 813
    iput p9, p0, Lcom/baidu/launcher/ui/homeview/MultiTouchController$PositionAndScale;->angle:F

    .line 814
    return-void

    :cond_2
    move v0, p7

    .line 811
    goto :goto_0
.end method
