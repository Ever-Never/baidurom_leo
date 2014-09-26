.class public Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellColor;
.super Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
.source "BulletinCellColor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected calculateStuffingScore(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;
    .locals 2
    .parameter "data"

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer;->score(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;

    move-result-object v0

    .line 36
    .local v0, score:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;
    const/16 v1, 0x3e8

    iput v1, v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;->imgScore:I

    .line 37
    return-object v0
.end method

.method public init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 2
    .parameter "page"
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, p2, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellColor;->setThumbnail(Ljava/lang/String;)V

    .line 24
    iget-object v1, p2, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellColor;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v1, p2, Lcom/baidu/bulletin/entity/ChannelItem;->brief:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellColor;->setBrief(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellColor;->setMaskCancel(Z)V

    .line 27
    const/4 v0, 0x1

    .line 29
    :cond_0
    return v0
.end method
