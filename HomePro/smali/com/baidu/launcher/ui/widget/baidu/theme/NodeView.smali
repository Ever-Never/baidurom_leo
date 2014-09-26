.class public Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;
.super Landroid/view/View;
.source "NodeView.java"


# instance fields
.field private mNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/theme/Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRender:Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->init()V

    .line 39
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;-><init>(Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->mRender:Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->mNodes:Ljava/util/List;

    .line 47
    return-void
.end method

.method private recycleAllNode()V
    .locals 3

    .prologue
    .line 92
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->mNodes:Ljava/util/List;

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

    .line 93
    .local v1, n:Lcom/baidu/launcher/ui/widget/baidu/theme/Node;
    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->doRecycle()V

    goto :goto_0

    .line 95
    .end local v1           #n:Lcom/baidu/launcher/ui/widget/baidu/theme/Node;
    :cond_0
    return-void
.end method


# virtual methods
.method public addNode(Lcom/baidu/launcher/ui/widget/baidu/theme/Node;)V
    .locals 1
    .parameter "n"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->mNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {p1, p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->addParent(Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;)V

    .line 65
    return-void
.end method

.method public convertDpToPixel(F)F
    .locals 5
    .parameter "dp"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 75
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x4320

    div-float/2addr v3, v4

    mul-float v1, p1, v3

    .line 76
    .local v1, px:F
    return v1
.end method

.method protected getNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/theme/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->mNodes:Ljava/util/List;

    return-object v0
.end method

.method public needRedraw()Z
    .locals 6

    .prologue
    .line 80
    const/4 v4, 0x0

    .line 81
    .local v4, ret:Z
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->mNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;

    .line 82
    .local v3, n:Lcom/baidu/launcher/ui/widget/baidu/theme/Node;
    iget-object v5, v3, Lcom/baidu/launcher/ui/widget/baidu/theme/Node;->mAnims:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;

    .line 83
    .local v0, anim:Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;
    iget v5, v0, Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;->mStatus:I

    if-nez v5, :cond_1

    .line 84
    const/4 v4, 0x1

    .line 85
    goto :goto_0

    .line 89
    .end local v0           #anim:Lcom/baidu/launcher/ui/widget/baidu/theme/Anim;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #n:Lcom/baidu/launcher/ui/widget/baidu/theme/Node;
    :cond_2
    return v4
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->recycleAllNode()V

    .line 100
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 102
    const-string v0, "FPSLIMIT"

    const-string v1, "detached"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->mRender:Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Renderer;->doDraw(Landroid/graphics/Canvas;)V

    .line 54
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->needRedraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;->invalidate()V

    .line 58
    :cond_0
    return-void
.end method
