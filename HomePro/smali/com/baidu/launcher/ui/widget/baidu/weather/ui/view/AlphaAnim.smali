.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;
.super Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
.source "AlphaAnim.java"


# instance fields
.field private mFromAlpha:I

.field private mToAlpha:I


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V

    .line 9
    return-void
.end method


# virtual methods
.method public doTransform(F)V
    .locals 3
    .parameter "animPercent"

    .prologue
    .line 18
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;->mToAlpha:I

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;->mFromAlpha:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;->mFromAlpha:I

    add-int v0, v1, v2

    .line 20
    .local v0, targetAlpha:I
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;->mNode:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;

    iput v0, v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->alpha:I

    .line 22
    return-void
.end method

.method public setTargetAlpha(II)V
    .locals 0
    .parameter "from"
    .parameter "to"

    .prologue
    .line 12
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;->mFromAlpha:I

    .line 13
    iput p2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/AlphaAnim;->mToAlpha:I

    .line 14
    return-void
.end method
