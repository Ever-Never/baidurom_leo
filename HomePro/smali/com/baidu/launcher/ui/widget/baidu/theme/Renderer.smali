.class public Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# instance fields
.field count:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mView:Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;->count:I

    .line 11
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;->mView:Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;

    .line 12
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;->mMatrix:Landroid/graphics/Matrix;

    .line 14
    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 24
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;->mView:Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->getNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;

    .line 26
    .local v1, n:Lcom/baidu/launcher/ui/widget/baidu/theme/Node;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->animStep()V

    .line 29
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 30
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;->mMatrix:Landroid/graphics/Matrix;

    iget v3, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->x:I

    int-to-float v3, v3

    iget v4, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 31
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;->mMatrix:Landroid/graphics/Matrix;

    iget v3, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->rotateAngle:F

    iget v4, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->x:I

    iget v5, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->mPivotX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->y:I

    iget v6, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->mPivotY:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 33
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;->mMatrix:Landroid/graphics/Matrix;

    iget v3, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->scaleFactor:F

    iget v4, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->scaleFactor:F

    iget v5, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->mPivotX:I

    int-to-float v5, v5

    iget v6, v1, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->mPivotY:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 34
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 40
    .end local v1           #n:Lcom/baidu/launcher/ui/widget/baidu/theme/Node;
    :cond_0
    return-void
.end method
