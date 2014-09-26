.class public Lcom/baidu/bulletin/utils/MusicPlayer$StateBarMonitor;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateBarMonitor"
.end annotation


# instance fields
.field fDensity:F

.field iExitButton:I

.field iPlayButton:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 845
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 846
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3800(Lcom/baidu/bulletin/utils/MusicPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StateBarMonitor;->fDensity:F

    .line 847
    const/high16 v0, 0x4224

    iget v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StateBarMonitor;->fDensity:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StateBarMonitor;->iPlayButton:I

    .line 848
    const/high16 v0, 0x4228

    iget v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StateBarMonitor;->fDensity:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StateBarMonitor;->iExitButton:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 851
    const-string v0, "com.baidu.bulletin.utils.musicplayer.musicstatebar"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 853
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StateBarMonitor;->iPlayButton:I

    if-ne v0, v1, :cond_3

    .line 854
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play button clicked >>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v1

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3900(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Waiting:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v1

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3900(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 856
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    .line 865
    :cond_1
    :goto_0
    return-void

    .line 857
    :cond_2
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Paused:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v1

    #getter for: Lcom/baidu/bulletin/utils/MusicPlayer;->mState:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    invoke-static {v1}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$3900(Lcom/baidu/bulletin/utils/MusicPlayer;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 858
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->play()V

    goto :goto_0

    .line 860
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$StateBarMonitor;->iExitButton:I

    if-ne v0, v1, :cond_1

    .line 861
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->getMusicPlayer()Lcom/baidu/bulletin/utils/MusicPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    goto :goto_0
.end method
