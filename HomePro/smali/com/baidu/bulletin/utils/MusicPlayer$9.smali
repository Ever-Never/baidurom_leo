.class Lcom/baidu/bulletin/utils/MusicPlayer$9;
.super Landroid/os/Handler;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/utils/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/utils/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 875
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$9;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/high16 v5, 0x3f80

    const v4, 0x3dcccccd

    const/4 v3, 0x1

    .line 878
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 879
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 912
    :cond_0
    :goto_0
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage default, msg.what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_1
    return-void

    .line 881
    :pswitch_0
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in case FOCUSCHANGE, msg.arg1 is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_1

    .line 909
    :pswitch_1
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown audio focus change code, change code is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :pswitch_2
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v1

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3900(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 885
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->pause()V

    .line 886
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$9;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mIsAudioFucosChanged:Z
    invoke-static {v0, v3}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$4102(Lcom/baidu/bulletin/utils/MusicPlayer;Z)Z

    goto :goto_0

    .line 890
    :pswitch_3
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v1

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3900(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 891
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->pause()V

    .line 892
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$9;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mIsAudioFucosChanged:Z
    invoke-static {v0, v3}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$4102(Lcom/baidu/bulletin/utils/MusicPlayer;Z)Z

    goto/16 :goto_0

    .line 896
    :pswitch_4
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v1

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3900(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 897
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$9;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mIsAudioFucosChanged:Z
    invoke-static {v0, v3}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$4102(Lcom/baidu/bulletin/utils/MusicPlayer;Z)Z

    .line 898
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$4200(Lcom/baidu/bulletin/utils/MusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto/16 :goto_0

    .line 902
    :pswitch_5
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$9;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mIsAudioFucosChanged:Z
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$4100(Lcom/baidu/bulletin/utils/MusicPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$9;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mIsAudioFucosChanged:Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$4102(Lcom/baidu/bulletin/utils/MusicPlayer;Z)Z

    .line 904
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mCurPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$4200(Lcom/baidu/bulletin/utils/MusicPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 905
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->play()V

    goto/16 :goto_0

    .line 879
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch

    .line 882
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
