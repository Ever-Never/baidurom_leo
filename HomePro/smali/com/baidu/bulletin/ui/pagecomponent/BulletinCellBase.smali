.class public abstract Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
.super Landroid/widget/FrameLayout;
.source "BulletinCellBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;,
        Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;,
        Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$ClickHandler;
    }
.end annotation


# static fields
.field private static final CELL_ANIM_INTERVAL:I = 0x3e8


# instance fields
.field private mBackgroundHeight:I

.field private mBackgroundWidth:I

.field protected mBrief:Landroid/widget/TextView;

.field private mCancelMask:Z

.field private mData:Lcom/baidu/bulletin/entity/ChannelItem;

.field protected mMaskAlphaEffect:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;

.field protected mMaskView:Landroid/view/View;

.field private mOwnerPage:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaybackPanel:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mCancelMask:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mCancelMask:Z

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mBackgroundWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mBackgroundHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mPlaybackPanel:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mData:Lcom/baidu/bulletin/entity/ChannelItem;

    return-object v0
.end method

.method private enableMediaPlaybackPanel()V
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic;->ClickEffect(Landroid/view/View;)Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskAlphaEffect:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;

    .line 91
    new-instance v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;-><init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mPlaybackPanel:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;

    .line 93
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mBrief:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 94
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mBrief:Landroid/widget/TextView;

    .line 96
    :cond_0
    return-void
.end method

.method private refreshChannelLogo()V
    .locals 2

    .prologue
    .line 99
    const v1, 0x7f080027

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    .local v0, logo:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mData:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v1}, Lcom/baidu/bulletin/entity/ChannelItem;->getLogo()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 103
    :cond_0
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "textView"
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 165
    if-eqz p1, :cond_0

    .line 166
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    const/4 v0, 0x1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected calculateStuffingScore(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;
    .locals 1
    .parameter "data"

    .prologue
    .line 214
    invoke-static {p0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer;->score(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;

    move-result-object v0

    return-object v0
.end method

.method protected getCellAnimationDelay()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mData:Lcom/baidu/bulletin/entity/ChannelItem;

    iget v0, v0, Lcom/baidu/bulletin/entity/ChannelItem;->pageCellIndex:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method protected hasPlayableMedia()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mData:Lcom/baidu/bulletin/entity/ChannelItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mData:Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v0}, Lcom/baidu/bulletin/entity/ChannelItem;->hasPlayableMedia()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/view/View;Lcom/baidu/bulletin/entity/ChannelItem;)Z
    .locals 1
    .parameter "page"
    .parameter "data"

    .prologue
    .line 59
    if-eqz p2, :cond_1

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mOwnerPage:Ljava/lang/ref/WeakReference;

    .line 61
    iput-object p2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mData:Lcom/baidu/bulletin/entity/ChannelItem;

    .line 62
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mTitle:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mBrief:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f080024

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskView:Landroid/view/View;

    .line 67
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->hasPlayableMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->enableMediaPlaybackPanel()V

    .line 73
    :goto_0
    new-instance v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$ClickHandler;

    invoke-direct {v0, p0, p2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$ClickHandler;-><init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 75
    const/4 v0, 0x1

    .line 77
    :goto_1
    return v0

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->refreshChannelLogo()V

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 187
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mOwnerPage:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mOwnerPage:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskAlphaEffect:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskAlphaEffect:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;

    invoke-virtual {v0, p2}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;->onVisibilityChanged(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public scoreStuffing(Lcom/baidu/bulletin/entity/ChannelItem;)I
    .locals 7
    .parameter "data"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->calculateStuffingScore(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;

    move-result-object v0

    .line 206
    .local v0, score:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;
    if-nez v0, :cond_0

    .line 207
    const/4 v1, 0x0

    .line 209
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;->imgScore:I

    int-to-double v1, v1

    iget v3, v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellStuffingScorer$Score;->txtScore:I

    int-to-double v3, v3

    const-wide v5, 0x3fd3333333333333L

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    goto :goto_0
.end method

.method protected setBrief(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mBrief:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 162
    return-void
.end method

.method protected setMaskCancel(Z)V
    .locals 0
    .parameter "mask"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mCancelMask:Z

    .line 87
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    new-instance v0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$1;-><init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;Ljava/lang/String;)V

    .line 135
    .local v0, imageCallbackHolder:Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;
    invoke-static {p1, v0}, Lcom/baidu/bulletin/ui/AsyncImageLoader;->load(Ljava/lang/String;Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;)V

    .line 139
    .end local v0           #imageCallbackHolder:Lcom/baidu/bulletin/ui/AsyncImageLoader$Callback;
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->setThumbnailDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setThumbnailDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "drawable"

    .prologue
    const/4 v1, 0x0

    .line 142
    if-eqz p1, :cond_2

    .line 143
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mCancelMask:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    .line 158
    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 106
    iput p1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mBackgroundWidth:I

    .line 107
    iput p2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mBackgroundHeight:I

    .line 108
    return-void
.end method
