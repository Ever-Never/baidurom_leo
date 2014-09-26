.class public interface abstract Lcom/baidu/bulletin/utils/MusicPlayer$Observer;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onProgressBarUpdata(I)V
.end method

.method public abstract onStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$State;)V
.end method

.method public abstract onToastStateChanged(Lcom/baidu/bulletin/utils/MusicPlayer$Toast;)V
.end method
