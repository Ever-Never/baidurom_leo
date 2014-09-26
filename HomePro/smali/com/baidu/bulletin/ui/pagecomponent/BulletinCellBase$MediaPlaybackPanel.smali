.class Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;
.super Ljava/lang/Object;
.source "BulletinCellBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlaybackPanel"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPlaybackPanel"


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mDownloadIndicator:Landroid/view/View;

.field private mLoadingIndicator:Landroid/view/View;

.field private mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

.field private mPlayButton:Landroid/widget/ImageView;

.field private mUploadButton:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 255
    iput-object p1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object v3, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 315
    new-instance v2, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;

    invoke-direct {v2, p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel$1;-><init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;)V

    iput-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    .line 256
    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 257
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030018

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 258
    .local v1, panel:Landroid/view/View;
    invoke-virtual {p1, v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->addView(Landroid/view/View;)V

    .line 260
    const v2, 0x7f080042

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mPlayButton:Landroid/widget/ImageView;

    .line 261
    const v2, 0x7f080041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mLoadingIndicator:Landroid/view/View;

    .line 262
    const v2, 0x7f080043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mDownloadIndicator:Landroid/view/View;

    .line 264
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->refreshPlayStatus()V

    .line 267
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v2

    #getter for: Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mData:Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-static {p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->access$400(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    invoke-virtual {v2, v3, v4}, Lcom/baidu/bulletin/ui/logic/UIController;->updateMediaPlayObserver(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    .line 270
    :cond_0
    return-void
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private hideLoading()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mLoadingIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 309
    :cond_0
    return-void
.end method

.method private showLoading()V
    .locals 3

    .prologue
    .line 299
    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 300
    .local v0, animation:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mLoadingIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 301
    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mLoadingIndicator:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    return-void
.end method


# virtual methods
.method public getObserver()Lcom/baidu/bulletin/utils/MusicPlayer$Observer;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mObserver:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    return-object v0
.end method

.method public refreshDownloadStatus()V
    .locals 3

    .prologue
    .line 294
    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mDownloadIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    #getter for: Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mData:Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->access$400(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    iget v0, v0, Lcom/baidu/bulletin/entity/ChannelItem;->detailDownloaded:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 295
    return-void

    .line 294
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public refreshPlayStatus()V
    .locals 3

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->hideLoading()V

    .line 275
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    #getter for: Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mData:Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-static {v2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->access$400(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->getPlaybackState(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v0

    .line 279
    .local v0, state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    :goto_0
    sget-object v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$2;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$State:[I

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 287
    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mPlayButton:Landroid/widget/ImageView;

    const v2, 0x7f020085

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 288
    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskAlphaEffect:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskAlphaEffect:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;->stop()V

    .line 291
    :cond_0
    :goto_1
    return-void

    .line 275
    .end local v0           #state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    :cond_1
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    goto :goto_0

    .line 281
    .restart local v0       #state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    :pswitch_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->showLoading()V

    .line 283
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mPlayButton:Landroid/widget/ImageView;

    const v2, 0x7f020088

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskAlphaEffect:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    iget-object v1, v1, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mMaskAlphaEffect:Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;->start()V

    goto :goto_1

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
