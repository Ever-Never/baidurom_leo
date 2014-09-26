.class public interface abstract Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;
.super Ljava/lang/Object;
.source "BulletinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/BulletinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteTaskListener"
.end annotation


# virtual methods
.method public abstract remoteTaskCanceled(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method

.method public abstract remoteTaskCompleted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)V
.end method

.method public abstract remoteTaskFailed(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;I)V
.end method

.method public abstract remoteTaskPreStarted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method

.method public abstract remoteTaskProgress(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;ILjava/lang/String;)V
.end method

.method public abstract remoteTaskStarted(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end method
