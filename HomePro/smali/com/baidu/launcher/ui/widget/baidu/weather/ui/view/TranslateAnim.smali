.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;
.super Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
.source "TranslateAnim.java"


# instance fields
.field private mFromX:I

.field private mFromY:I

.field private mToX:I

.field private mToY:I


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V

    .line 13
    return-void
.end method


# virtual methods
.method public doTransform(F)V
    .locals 4
    .parameter "animPercent"

    .prologue
    .line 24
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mToX:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mFromX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mFromX:I

    add-int v0, v2, v3

    .line 25
    .local v0, targetX:I
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mToY:I

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mFromY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mFromY:I

    add-int v1, v2, v3

    .line 27
    .local v1, targetY:I
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;

    iput v0, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->x:I

    .line 28
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;

    iput v1, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->y:I

    .line 31
    return-void
.end method

.method public setTarget(IIII)V
    .locals 0
    .parameter "fromX"
    .parameter "fromY"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 16
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mFromX:I

    .line 17
    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mFromY:I

    .line 18
    iput p3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mToX:I

    .line 19
    iput p4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/TranslateAnim;->mToY:I

    .line 20
    return-void
.end method
