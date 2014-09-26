.class public Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;
.super Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;
.source "MyView.java"


# instance fields
.field private mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->init()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/widget/baidu/theme/NodeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->init()V

    .line 26
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    .line 32
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->addNode(Lcom/baidu/launcher/ui/widget/baidu/theme/Node;)V

    .line 33
    return-void
.end method


# virtual methods
.method public playHideAnim()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->hide()V

    .line 83
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->invalidate()V

    .line 84
    return-void
.end method

.method public playShowAnim()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->show()V

    .line 79
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->invalidate()V

    .line 80
    return-void
.end method

.method public setFanType(I)V
    .locals 5
    .parameter "t"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->getWidth()I

    move-result v1

    .line 37
    .local v1, width:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->getHeight()I

    move-result v0

    .line 39
    .local v0, height:I
    packed-switch p1, :pswitch_data_0

    .line 72
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020328

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setImage(Landroid/content/Context;III)V

    .line 73
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setRotatePivot(I)V

    .line 76
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02032a

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setImage(Landroid/content/Context;III)V

    .line 42
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setRotatePivot(I)V

    goto :goto_0

    .line 49
    :pswitch_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02032d

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setImage(Landroid/content/Context;III)V

    .line 50
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setRotatePivot(I)V

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02032c

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setImage(Landroid/content/Context;III)V

    .line 56
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setRotatePivot(I)V

    goto :goto_0

    .line 61
    :pswitch_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02032b

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setImage(Landroid/content/Context;III)V

    .line 62
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setRotatePivot(I)V

    goto :goto_0

    .line 67
    :pswitch_4
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f020329

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setImage(Landroid/content/Context;III)V

    .line 68
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/MyView;->mNode:Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/FanNode;->setRotatePivot(I)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
