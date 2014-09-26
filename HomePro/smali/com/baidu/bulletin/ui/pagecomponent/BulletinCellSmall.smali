.class public Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellSmall;
.super Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
.source "BulletinCellSmall.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 3
    .parameter "page"
    .parameter "data"

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v1

    .line 25
    .local v1, ret:Z
    if-eqz v1, :cond_0

    .line 27
    iget-object v2, p2, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellSmall;->setThumbnail(Ljava/lang/String;)V

    .line 28
    iget-object v2, p2, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellSmall;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    const v2, 0x7f080045

    invoke-virtual {p0, v2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellSmall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, channelTextView:Landroid/widget/TextView;
    iget-object v2, p2, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .end local v0           #channelTextView:Landroid/widget/TextView;
    :cond_0
    return v1
.end method
