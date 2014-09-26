.class Lcom/baidu/bulletin/utils/MusicPlayer$4;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 591
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "mp"

    .prologue
    const/4 v6, 0x1

    .line 594
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mCurrentPosition:I
    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$2802(Lcom/baidu/bulletin/utils/MusicPlayer;I)I

    .line 596
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mIsDownloadFailed:Z
    invoke-static {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$2900(Lcom/baidu/bulletin/utils/MusicPlayer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-virtual {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    .line 633
    :goto_0
    return-void

    .line 601
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J
    invoke-static {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3000(Lcom/baidu/bulletin/utils/MusicPlayer;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mTotalContentSize:J
    invoke-static {v4}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3100(Lcom/baidu/bulletin/utils/MusicPlayer;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mIsResumeFirstTime:Z
    invoke-static {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3200(Lcom/baidu/bulletin/utils/MusicPlayer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 602
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-virtual {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    goto :goto_0

    .line 606
    :cond_1
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J
    invoke-static {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3000(Lcom/baidu/bulletin/utils/MusicPlayer;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mTotalContentSize:J
    invoke-static {v4}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3100(Lcom/baidu/bulletin/utils/MusicPlayer;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mIsResumeFirstTime:Z
    invoke-static {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3200(Lcom/baidu/bulletin/utils/MusicPlayer;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 607
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mIsResumeFirstTime:Z
    invoke-static {v2, v6}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3202(Lcom/baidu/bulletin/utils/MusicPlayer;Z)Z

    .line 608
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->resumePlaying()V
    invoke-static {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3300(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    goto :goto_0

    .line 612
    :cond_2
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mBitRate:D
    invoke-static {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3400(Lcom/baidu/bulletin/utils/MusicPlayer;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_3

    .line 613
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BitRate is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mBitRate:D
    invoke-static {v4}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3400(Lcom/baidu/bulletin/utils/MusicPlayer;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  error!!!>>>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_3
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mCurrentPosition:I
    invoke-static {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$2800(Lcom/baidu/bulletin/utils/MusicPlayer;)I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mBitRate:D
    invoke-static {v4}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3400(Lcom/baidu/bulletin/utils/MusicPlayer;)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 619
    .local v0, mCurrentSize:J
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCompletion,the position is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mCurrentPosition:I
    invoke-static {v4}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$2800(Lcom/baidu/bulletin/utils/MusicPlayer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCompletion,the mCurrentSize is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCompletion,the mDownloadSize is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J
    invoke-static {v4}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3000(Lcom/baidu/bulletin/utils/MusicPlayer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J
    invoke-static {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3000(Lcom/baidu/bulletin/utils/MusicPlayer;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x32000

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 625
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Waiting for data!!!"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mIsWaitingData:Z
    invoke-static {v2, v6}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3502(Lcom/baidu/bulletin/utils/MusicPlayer;Z)Z

    .line 627
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    iget-object v3, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mDownloadSize:J
    invoke-static {v3}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3000(Lcom/baidu/bulletin/utils/MusicPlayer;)J

    move-result-wide v3

    #setter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mPreviousDownloadSize:J
    invoke-static {v2, v3, v4}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3602(Lcom/baidu/bulletin/utils/MusicPlayer;J)J

    .line 628
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    sget-object v3, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Waiting:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->setStateAndStatusBar(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V
    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$1700(Lcom/baidu/bulletin/utils/MusicPlayer;Lcom/baidu/bulletin/utils/MusicPlayer$State;)V

    goto/16 :goto_0

    .line 630
    :cond_4
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Resume playing!!!"

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v2, p0, Lcom/baidu/bulletin/utils/MusicPlayer$4;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    #calls: Lcom/baidu/bulletin/utils/MusicPlayer;->resumePlaying()V
    invoke-static {v2}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3300(Lcom/baidu/bulletin/utils/MusicPlayer;)V

    goto/16 :goto_0
.end method
