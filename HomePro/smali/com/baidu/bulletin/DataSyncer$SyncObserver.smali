.class public interface abstract Lcom/baidu/bulletin/DataSyncer$SyncObserver;
.super Ljava/lang/Object;
.source "DataSyncer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/DataSyncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncObserver"
.end annotation


# virtual methods
.method public abstract onAlreadySyncing()V
.end method

.method public abstract onNewMessageNotified(I)V
.end method

.method public abstract onPageImageLoaded(I)V
.end method

.method public abstract onPageLoaded(Lcom/baidu/bulletin/entity/ChannelItem;)V
.end method

.method public abstract onSyncFinish(ZI)V
.end method

.method public abstract onSyncStart()V
.end method
