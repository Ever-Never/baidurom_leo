.class Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPlayClickListener"
.end annotation


# instance fields
.field private mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter
    .parameter "channelItemInfo"

    .prologue
    .line 1138
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 1140
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1144
    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v2, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v2, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v3, 0xbb8

    if-ge v2, v3, :cond_0

    .line 1146
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v1

    .line 1147
    .local v1, uiController:Lcom/baidu/bulletin/ui/logic/UIController;
    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/logic/UIController;->isStorageAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1171
    .end local v1           #uiController:Lcom/baidu/bulletin/ui/logic/UIController;
    :cond_0
    :goto_0
    return-void

    .line 1152
    .restart local v1       #uiController:Lcom/baidu/bulletin/ui/logic/UIController;
    :cond_1
    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {v1, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->getPlaybackState(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v0

    .line 1153
    .local v0, state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    sget-object v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$1;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$State:[I

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1156
    :pswitch_0
    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    goto :goto_0

    .line 1160
    :pswitch_1
    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/logic/UIController;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->play()V

    goto :goto_0

    .line 1165
    :pswitch_2
    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    new-instance v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    iget-object v5, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {v3, v4, v5}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/baidu/bulletin/ui/logic/UIController;->startMusicPlayer(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    .line 1166
    const/16 v2, 0x32

    invoke-static {v2}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForChnlClick(B)V

    goto :goto_0

    .line 1153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
