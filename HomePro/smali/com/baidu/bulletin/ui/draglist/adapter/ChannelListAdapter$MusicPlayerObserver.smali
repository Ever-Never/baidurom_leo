.class Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"

# interfaces
.implements Lcom/baidu/bulletin/utils/MusicPlayer$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicPlayerObserver"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field private mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 1
    .parameter
    .parameter "channelItemInfo"

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1265
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;->handler:Landroid/os/Handler;

    .line 1235
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 1236
    return-void
.end method


# virtual methods
.method public onProgressBarUpdata(I)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 1263
    return-void
.end method

.method public onStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$2;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$2;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1275
    return-void
.end method

.method public onToastStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$1;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1256
    return-void
.end method

.method public refreshPlayStatus()V
    .locals 2

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;->this$0:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->refreshPlayStatus(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 1283
    return-void
.end method
