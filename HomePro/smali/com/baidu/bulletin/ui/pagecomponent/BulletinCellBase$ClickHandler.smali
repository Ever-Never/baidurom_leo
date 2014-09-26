.class Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$ClickHandler;
.super Ljava/lang/Object;
.source "BulletinCellBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 1
    .parameter
    .parameter "data"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$ClickHandler;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    if-eqz p2, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->hasPlayableMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    #getter for: Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mPlaybackPanel:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;
    invoke-static {p1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->access$200(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;

    move-result-object v0

    #getter for: Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->mPlayButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->access$300(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p1, p0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 233
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$ClickHandler;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->hasPlayableMedia()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$ClickHandler;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    #getter for: Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mPlaybackPanel:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->access$200(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$MediaPlaybackPanel;->getObserver()Lcom/baidu/bulletin/utils/MusicPlayer$Observer;

    move-result-object v0

    .line 235
    .local v0, observer:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;
    :goto_0
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase$ClickHandler;->this$0:Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;

    #getter for: Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->mData:Lcom/baidu/bulletin/entity/ChannelItem;
    invoke-static {v2}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;->access$400(Lcom/baidu/bulletin/ui/pagecomponent/BulletinCellBase;)Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/baidu/bulletin/ui/logic/UIController;->onChannelClicked(Lcom/baidu/bulletin/entity/ChannelItem;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    .line 237
    .end local v0           #observer:Lcom/baidu/bulletin/utils/MusicPlayer$Observer;
    :cond_0
    return-void

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
