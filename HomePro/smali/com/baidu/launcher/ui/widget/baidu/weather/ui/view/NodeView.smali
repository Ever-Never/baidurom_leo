.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;
.super Landroid/view/View;
.source "NodeView.java"


# instance fields
.field private mEnable:Z

.field private mNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRender:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mEnable:Z

    .line 23
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mEnable:Z

    .line 29
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mEnable:Z

    .line 35
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Renderer;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Renderer;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mRender:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Renderer;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mNodes:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public addNode(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->addParent(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;)V

    .line 61
    return-void
.end method

.method public convertDpToPixel(F)F
    .locals 5
    .parameter "dp"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 71
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x4320

    div-float/2addr v3, v4

    mul-float v1, p1, v3

    .line 72
    .local v1, px:F
    return v1
.end method

.method public enableAnimation(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mEnable:Z

    .line 103
    return-void
.end method

.method protected getNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mNodes:Ljava/util/List;

    return-object v0
.end method

.method public needRedraw()Z
    .locals 6

    .prologue
    .line 76
    const/4 v4, 0x0

    .line 77
    .local v4, ret:Z
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;

    .line 78
    .local v3, n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;
    iget-object v5, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->mAnims:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;

    .line 79
    .local v0, anim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
    iget v5, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;->mStatus:I

    if-nez v5, :cond_1

    .line 80
    const/4 v4, 0x1

    .line 81
    goto :goto_0

    .line 85
    .end local v0           #anim:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Anim;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;
    :cond_2
    return v4
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 99
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mEnable:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mRender:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Renderer;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Renderer;->doDraw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->needRedraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->invalidate()V

    .line 54
    :cond_0
    return-void
.end method

.method public recycleAllNode()V
    .locals 3

    .prologue
    .line 88
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/NodeView;->mNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;

    .line 89
    .local v1, n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;->doRecycle()V

    goto :goto_0

    .line 91
    .end local v1           #n:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/Node;
    :cond_0
    return-void
.end method
