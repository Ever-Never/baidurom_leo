.class Lcom/baidu/bulletin/utils/MusicPlayer$3;
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
    .line 579
    iput-object p1, p0, Lcom/baidu/bulletin/utils/MusicPlayer$3;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/baidu/bulletin/utils/MusicPlayer$3;->this$0:Lcom/baidu/bulletin/utils/MusicPlayer;

    invoke-virtual {v0}, Lcom/baidu/bulletin/utils/MusicPlayer;->stop()V

    .line 584
    invoke-static {}, Lcom/baidu/bulletin/utils/MusicPlayer;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Local file play completed, Observer.onPlayCompleted() called"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method
