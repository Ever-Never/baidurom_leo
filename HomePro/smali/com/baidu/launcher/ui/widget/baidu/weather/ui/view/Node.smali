.class public abstract Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field public alpha:I

.field public height:I

.field public mAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;",
            ">;"
        }
    .end annotation
.end field

.field protected mPaint:Landroid/graphics/Paint;

.field private mParentView:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;

.field public mPivotX:I

.field public mPivotY:I

.field public rotateAngle:F

.field public scaleFactor:F

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->scaleFactor:F

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->rotateAngle:F

    .line 20
    const/16 v0, 0xff

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->alpha:I

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mPaint:Landroid/graphics/Paint;

    .line 25
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->init()V

    .line 26
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mAnims:Ljava/util/List;

    .line 32
    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->width:I

    .line 33
    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->height:I

    .line 35
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->width:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mPivotX:I

    .line 36
    iget v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->height:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mPivotY:I

    .line 37
    return-void
.end method


# virtual methods
.method public addAnim(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mAnims:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public addParent(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mParentView:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;

    .line 41
    return-void
.end method

.method public animStep()V
    .locals 3

    .prologue
    .line 54
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;

    .line 55
    .local v0, a:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->Step()V

    goto :goto_0

    .line 57
    .end local v0           #a:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
    :cond_0
    return-void
.end method

.method public abstract doDraw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
.end method

.method public doRecycle()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public dp2px(F)F
    .locals 1
    .parameter "d"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->getParent()Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->convertDpToPixel(F)F

    move-result v0

    return v0
.end method

.method public dp2px(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->getParent()Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->convertDpToPixel(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public finishAnims()V
    .locals 3

    .prologue
    .line 69
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;

    .line 70
    .local v0, a:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->finish()V

    goto :goto_0

    .line 72
    .end local v0           #a:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
    :cond_0
    return-void
.end method

.method public getParent()Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mParentView:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;

    return-object v0
.end method

.method public removeAnim(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mAnims:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .parameter "a"

    .prologue
    .line 43
    iput p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->alpha:I

    .line 44
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 45
    return-void
.end method

.method public startAnims()V
    .locals 3

    .prologue
    .line 59
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;

    .line 60
    .local v0, a:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->start()V

    goto :goto_0

    .line 62
    .end local v0           #a:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
    :cond_0
    return-void
.end method

.method public stopAnims()V
    .locals 3

    .prologue
    .line 64
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;

    .line 65
    .local v0, a:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->stop()V

    goto :goto_0

    .line 67
    .end local v0           #a:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
    :cond_0
    return-void
.end method
