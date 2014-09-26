.class public interface abstract Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;
.super Ljava/lang/Object;
.source "RequestAccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/network/RequestAccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenObserver"
.end annotation


# virtual methods
.method public abstract onDownloadSongUrlFail(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method

.method public abstract onDownloadSongUrlFail(Lcom/baidu/bulletin/entity/ChannelItem;)V
.end method

.method public abstract onDownloadSongUrlSuccess(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)V
.end method

.method public abstract onDownloadSongUrlSuccess(Lcom/baidu/bulletin/entity/ChannelItem;Ljava/lang/String;)V
.end method
