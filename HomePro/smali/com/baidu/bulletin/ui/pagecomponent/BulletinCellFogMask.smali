.class public Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellFogMask;
.super Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
.source "BulletinCellFogMask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 2
    .parameter "page"
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 26
    invoke-super {p0, p1, p2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    iget-object v1, p2, Lcom/baidu/bulletin/entity/ChannelItem;->img:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellFogMask;->setThumbnail(Ljava/lang/String;)V

    .line 28
    iget-object v1, p2, Lcom/baidu/bulletin/entity/ChannelItem;->title:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellFogMask;->setTitle(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v1, p2, Lcom/baidu/bulletin/entity/ChannelItem;->brief:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellFogMask;->setBrief(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellFogMask;->setMaskCancel(Z)V

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
