.class Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$1;
.super Ljava/lang/Object;
.source "ChannelListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;->onToastStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;

.field final synthetic val$state:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$1;->this$1:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$1;->val$state:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1243
    const-string v0, "ChannelListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$1;->val$state:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-virtual {v2}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    sget-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$1;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$Toast:[I

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver$1;->val$state:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-virtual {v1}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1254
    :goto_0
    return-void

    .line 1251
    :pswitch_0
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    const-string v1, "\u97f3\u4e50\u6682\u65f6\u65e0\u6cd5\u64ad\u653e"

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method