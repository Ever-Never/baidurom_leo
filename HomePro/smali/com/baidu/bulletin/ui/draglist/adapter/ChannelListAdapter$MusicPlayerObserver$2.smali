.class Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$2;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;->onStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 1269
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$2;->this$1:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$2;->this$1:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;->refreshPlayStatus()V

    .line 1273
    return-void
.end method
